/*
 * MNT Reform 0.5.0 ATtiny 841 controller firmware
 * Copyright 2018 MNT Media and Technology UG, Berlin
 * SPDX-License-Identifier: GPL-3.0-or-later
 * Use ATTinyCore for building with Arduino IDE: https://github.com/SpenceKonde/ATTinyCore
 * 
 * GOTCHAS:
 * - select 1MHz clock
 * - "burn bootloader" once
 * - select "counterclockwise" pin mapping
 * - flash with an "Arduino as ISP"
 * 
 */

#define SCL_PIN 0
#define SCL_PORT PORTA
#define SDA_PIN 1
#define SDA_PORT PORTA
#define HALL_SENSOR_PIN A5
#define HALL_SENSOR_SUPPLY_PIN 4
#define INA_ADDR 0x4e

#define I2C_WRITE 0
#define I2C_READ 1

#include "SoftI2CMaster.h"
#include <SoftwareSerial.h>

SoftwareSerial softSerial(8, 3);

int16_t ina_read16(unsigned char reg) {
  uint16_t val = 0;
  if (i2c_start((INA_ADDR << 1) | I2C_WRITE)) {
    i2c_write(reg); 
    i2c_rep_start((INA_ADDR << 1) | I2C_READ);
    val  = ((uint16_t)i2c_read(false)) << 8;
    val |= i2c_read(true);
    i2c_stop();
  }
  return val;
}

#define ST_EXPECT_DIGIT_0 0
#define ST_EXPECT_DIGIT_1 1
#define ST_EXPECT_DIGIT_2 2
#define ST_EXPECT_DIGIT_3 3
#define ST_EXPECT_CMD     4
#define ST_SYNTAX_ERROR   5
#define ST_EXPECT_RETURN  6

#define LID_CLOSED 1
#define LID_OPEN   0

float ampSecs = 5*3600.0;
unsigned char hallState = LID_OPEN;
int thresh = 580;
int window = 30;
int hallSense = 0;

unsigned char state = ST_EXPECT_DIGIT_0;
unsigned int inputNumber = 0;
unsigned long lastTime = 0;

float volts = 0;
float current = 0;

char cmd = 'a';
unsigned char echo = 1;

char hallSenseDir = 0;
char hallSenseEvents = 0;

// TODO if there is no battery power, ignore lid sensor (values >900)
void handleLidSensor() {
  hallSense = analogRead(HALL_SENSOR_PIN);
  if (hallState==LID_OPEN && (hallSenseDir == 0 && hallSense>(thresh+window) || hallSenseDir == 1 && hallSense<(thresh-window))) {
    hallState = LID_CLOSED;
  }
  if (hallState==LID_CLOSED && (hallSenseDir == 0 && hallSense<(thresh-window) || hallSenseDir == 1 && hallSense>(thresh+window))) {
    hallState = LID_OPEN;
    if (hallSenseEvents) softSerial.println("event:wake");
  }
}

void handleCommands() {
  char chr = softSerial.read();
  if (echo) softSerial.print(chr);

  // states:
  // 0-3 digits of optional command argument
  // 4   command letter expected
  // 5   syntax error (unexpected character)
  // 6   command letter entered
  
  if (state>=ST_EXPECT_DIGIT_0 && state<=ST_EXPECT_DIGIT_3) {
    // read number or command
    if (chr >= '0' && chr <= '9') {
      inputNumber*=10;
      inputNumber+=(chr-'0');
      state++;
    } else if (chr >= 'a' && chr <= 'z') {
      // command entered instead of digit
      cmd = chr;
      state = ST_EXPECT_RETURN;
    } else if (chr == '\n' || chr == ' ') {
      // ignore newlines or spaces
    } else if (chr == '\r') {
      softSerial.println("error:syntax");
      state = ST_EXPECT_DIGIT_0;
      inputNumber = 0;
    } else {
      // syntax error
      state = ST_SYNTAX_ERROR;
    }
  }
  else if (state == ST_EXPECT_CMD) {
    // read command
    if (chr >= 'a' && chr <= 'z') {
      cmd = chr;
      state = ST_EXPECT_RETURN;
    } else {
      state = ST_SYNTAX_ERROR;
    }
  }
  else if (state == ST_SYNTAX_ERROR) {
    // syntax error
    if (chr == '\r') {
      softSerial.println("error:syntax");
      state = ST_EXPECT_DIGIT_0;
      inputNumber = 0;
    }
  }
  else if (state == ST_EXPECT_RETURN) {
    if (chr == '\n' or chr == ' ') {
      // ignore newlines or spaces
    }
    else if (chr == '\r') {
      // execute
      if (cmd == 'a') {
        // get current (mA)
        softSerial.println((int)(current*1000.0));
      }
      else if (cmd == 'v') {
        // get voltage
        softSerial.println((int)(volts*1000.0));
      }
      else if (cmd == 'c') {
        // set/get battery capacity (mAh)
        if (inputNumber>0) {
          ampSecs = ((float)inputNumber)*3.6;
        }
        softSerial.println((int)(ampSecs/3.6));
      }
      else if (cmd == 's') {
        // print sensor analog reading 0-1023
        softSerial.println(hallSense);
      }
      else if (cmd == 'l') {
        // print lid open/close state
        softSerial.println(hallState);
      }
      else if (cmd == 't') {
        // set open/closed threshold
        if (inputNumber>0) {
          thresh = inputNumber;
        }
        softSerial.println(thresh);
      }
      else if (cmd == 'w') {
        // set open/closed threshold hysteresis window
        if (inputNumber>0) {
          window = inputNumber;
        }
        softSerial.println(window);
      }
      else if (cmd == 'u') {
        // uptime of attiny in seconds
        softSerial.println(millis()/1000);
      }
      else if (cmd == 'e') {
        // toggle serial echo
        echo = inputNumber?1:0;
        //softSerial.print("echo:");
        //softSerial.println(echo);
      }
      else if (cmd == 'o') {
        // toggle lid sensor magnet orientation
        hallSenseDir = inputNumber?1:0;
        //softSerial.print("orientation:");
        softSerial.println(hallSenseDir);
      }
      else if (cmd == 'k') {
        // toggle lid sensor waKe events
        hallSenseEvents = inputNumber?1:0;
        //softSerial.print("events:");
        //softSerial.println(hallSenseEvents);
      }
      else {
        softSerial.println("error:command");
      }
    
      state = ST_EXPECT_DIGIT_0;
      inputNumber = 0;
    } else {
      state = ST_SYNTAX_ERROR;
    }
  }
}

void handleBattery() {
  float raw_volts   = (float)ina_read16(0x2);
  float raw_current = (float)ina_read16(0x1);

  volts   = raw_volts * 0.00125;
  current = raw_current * 0.001;

  if (current>-0.02 && current<0.02) current = 0; // clamp to zero

  unsigned long thisTime = millis();
  if (lastTime>0 && thisTime>lastTime) {
    unsigned long millisPassed = thisTime - lastTime;

    if (millisPassed >= 1000) {
      lastTime = thisTime;
      
      // decrease estimated battery capacity
      ampSecs -= current*(millisPassed/1000);
    }
  } else {
    // timer uninitialized or timer wrap
    lastTime = thisTime;
  }
}

void loop() {
  handleBattery();
  handleLidSensor();
  
  if (softSerial.available() > 0) {
    handleCommands();
  }
}

void setup() {
  softSerial.begin(2400);
  softSerial.println("reform:attiny:0.5.0:boot");
  
  analogReference(DEFAULT);

  // if you don't want to use an analog sensor, you can
  // disable the ADC to save a bit of power
  //
  //ADCSRA&=(~(1<<ADEN));

  if (!i2c_init()) {
    softSerial.println("error:i2c");
  }

  // physical pin 8 (J34 pin 3) for hall effect sensor
  pinMode(HALL_SENSOR_PIN, INPUT);
  // physical pin 7 (J34 pin 5) for hall effect sensor supply voltage
  pinMode(HALL_SENSOR_SUPPLY_PIN, OUTPUT);
  digitalWrite(HALL_SENSOR_SUPPLY_PIN, HIGH);

  // PWRON output (TODO: ULVO)
  pinMode(7, OUTPUT);
  digitalWrite(7, HIGH);
}
