#include <SoftwareSerial.h>
SoftwareSerial softSerial(8,3);
#define SCL_PIN 0
#define SCL_PORT PORTA
#define SDA_PIN 1
#define SDA_PORT PORTA
#include <SoftI2CMaster.h>

/*
 * MNT Reform 0.3+ ATtiny 841 controller firmware
 */

// I2C scanner
/*void scan() {
  byte error, address;
  int nDevices;
  
  nDevices = 0;
  for (address = 1; address < 127; address++ )
  {
    error = !i2c_start((address<<1)|I2C_WRITE);
    i2c_stop();
    if (!error)
    {
      if (address < 127) {
        softSerial.print(" ++");
        nDevices++;
      }
    } else {
      softSerial.print(" --");
    }
    softSerial.print(address, HEX);
  }
  softSerial.println("");
  if (nDevices == 0) {
    softSerial.println(":(");
  }
  else
  {
    softSerial.println(":)");
  }
}*/

void setup() {
  softSerial.begin(9600);
  if (!i2c_init())
    softSerial.println("i2c fail");
  else {
    softSerial.println("i2c ok");
  }

  // physical pin 3 for hall effect sensor
  pinMode(A10, INPUT);
  // physical pin 2 for hall effect sensor supply voltage
  pinMode(0, OUTPUT);
  digitalWrite(0, HIGH);

  // PWRON output (TODO: ULVO)
  pinMode(7, OUTPUT);
  digitalWrite(7, HIGH);
}

#define ina_addr 0x4e

int16_t ina_read16(byte reg) {
  uint16_t val = 0;
  if (i2c_start((ina_addr<<1)|I2C_WRITE)) {
    i2c_write(reg); 
    i2c_rep_start((ina_addr<<1)|I2C_READ);
    val  = ((uint16_t)i2c_read(false))<<8;
    val |= i2c_read(true);
    i2c_stop();
  }
  return val;
}

#define LID_CLOSED 1
#define LID_OPEN 0

float ampSecs = 5*3600.0;
byte hallState = LID_OPEN;
int thresh = 500;
int window = 10;

void loop() {
  float raw_volts   = (float)ina_read16(0x2);
  float raw_current = (float)ina_read16(0x1);

  float volts   = raw_volts * 0.00125;
  float current = raw_current * 0.001;

  if (current>-0.02 && current<0.02) current = 0; // clamp to zero

  ampSecs -= current;

  int hallSense = analogRead(A10);
  if (hallSense>(thresh+window) && hallState==LID_OPEN) {
    //softSerial.println("lid_closed");
    hallState = LID_CLOSED;
  }
  if (hallSense<(thresh+window) && hallState==LID_CLOSED) {
    softSerial.println("lid_open");
    hallState = LID_OPEN;
  }

  if (softSerial.available() > 0) {
    char cmd = softSerial.read();

    if (cmd == 'p') {
      softSerial.print(ampSecs/3600.0);
      softSerial.print("Ah\t");
      softSerial.print(volts);
      softSerial.print("V\t");
      softSerial.print(current);
      softSerial.println("A");
    }
    else if (cmd == 'b') {
      // reset battery capacity to 10Ah
      ampSecs = 10*3600.0;
    }
    else if (cmd == 'h') {
      softSerial.println(hallSense);
    }
    else if (cmd == 'l') {
      softSerial.println(hallState);
    }
    else if (cmd == '1') {
      thresh+=10;
      softSerial.println(thresh);
    }
    else if (cmd == '2') {
      thresh-=10;
      softSerial.println(thresh);
    }
    else if (cmd == '3') {
      window+=1;
      softSerial.println(window);
    }
    else if (cmd == '4') {
      window-=1;
      softSerial.println(window);
    }
  }
  delay(1000);
}
