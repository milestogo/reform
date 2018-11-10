/*
 * MNT Reform 0.3+ ATtiny 841 controller firmware
 * Copyright 2018 MNT Media and Technology UG, Berlin
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#define SCL_PIN 0
#define SCL_PORT PORTA
#define SDA_PIN 1
#define SDA_PORT PORTA
#include <SoftI2CMaster.h>
#include <SoftwareSerial.h>

#define INA_ADDR 0x4e

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

SoftwareSerial softSerial(8, 3);

float ampSecs = 5*3600.0;
unsigned char hallState = LID_OPEN;
int thresh = 500;
int window = 10;
int hallSense = 0;

unsigned char state = ST_EXPECT_DIGIT_0;
unsigned int inputNumber = 0;
unsigned long lastTime = 0;

float volts = 0;
float current = 0;

char cmd = 'a';
unsigned char echo = 1;

void handleLidSensor() {
  hallSense = analogRead(A10);
  if (hallSense>(thresh+window) && hallState==LID_OPEN) {
    hallState = LID_CLOSED;
  }
  if (hallSense<(thresh+window) && hallState==LID_CLOSED) {
    softSerial.println("event:wake");
    hallState = LID_OPEN;
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
      if (cmd == 'p') {
        // print power stats
        softSerial.print("power(Ah,V,A):");
        softSerial.print(ampSecs/3600.0);
        softSerial.print("\t");
        softSerial.print(volts);
        softSerial.print("\t");
        softSerial.println(current);
      }
      else if (cmd == 'c') {
        // set battery capacity
        if (inputNumber>0) {
          ampSecs = inputNumber*60.0;
        }
        softSerial.print("capacity(Ah):");
        softSerial.println(ampSecs/3600.0);
      }
      else if (cmd == 'h') {
        // print hall sensor analog reading
        softSerial.print("sensor:");
        softSerial.println(hallSense);
      }
      else if (cmd == 'l') {
        // print lid open/close state
        softSerial.print("lid:");
        softSerial.println(hallState);
      }
      else if (cmd == 't') {
        // set open/closed threshold
        if (inputNumber>0) {
          thresh = inputNumber;
        }
        softSerial.print("threshold:");
        softSerial.println(thresh);
      }
      else if (cmd == 'w') {
        // set open/closed threshold fuzz window
        if (inputNumber>0) {
          window = inputNumber;
        }
        softSerial.print("window:");
        softSerial.println(window);
      }
      else if (cmd == 'u') {
        // uptime of attiny in seconds
        softSerial.print("uptime(s):");
        softSerial.println(millis()/1000);
      }
      else if (cmd == 'e') {
        // toggle serial echo
        echo = inputNumber?1:0;
        softSerial.print("echo:");
        softSerial.println(echo);
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
  softSerial.println("reform:attiny:0.4.0:boot");
  if (!i2c_init()) {
    softSerial.println("error:i2c");
  }

  // physical pin 3 for hall effect sensor
  pinMode(A10, INPUT);
  // physical pin 2 for hall effect sensor supply voltage
  pinMode(0, OUTPUT);
  digitalWrite(0, HIGH);
  // physical pin 5 for hall effect sensor GND
  pinMode(2, OUTPUT);
  digitalWrite(2, LOW);

  // PWRON output (TODO: ULVO)
  pinMode(7, OUTPUT);
  digitalWrite(7, HIGH);
}
