#define PIN_RST 7
#define PIN_RDY 8

// manual says "full address" 0xe9/0xe8, 7-bit 0x74

#define ADDR_APP 0x74
#define ADDR_BOOT 0x74^0x40

// pin 2: SDA
// pin 3: SCL

#include <Wire.h>
#include <stdint.h>

// TOP row of azoteq connector:
// SCL  SDA  ??  3V3  GND
// RDY  ??   ??  ??   ??

// RST is on TP1

void setup()
{
  Serial.begin(115200);
  
  //pinMode(PIN_RST, OUTPUT);
  pinMode(PIN_RDY, INPUT);
  
  //digitalWrite(PIN_RST, LOW);
  //delay(200);
  //digitalWrite(PIN_RST, HIGH);
  //delay(200);
  
  Wire.begin();
  Mouse.begin();
  
  // config
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x10);
  Wire.write((1<<7)|(0<<6)|(1<<5)|(0<<4)|(0<<3)|(0<<2)|(0<<1)|0);
  Wire.write((1<<7)|(1<<6)|(1<<5)|(1<<4)|(1<<3)|(0<<2)|(0<<1)|0);
  Wire.endTransmission(false);
  
  while (!digitalRead(PIN_RDY)) {
    Serial.print("waiting for RDY2...\r\n");
    delay(100);
  }
  
  // channel setup
  Wire.beginTransmission(ADDR_APP);
  Wire.write(0x15);
  // disable tx channel 10 and rx channels 14,15 as they contain noise 
  Wire.write(13);
  Wire.write(9);
  Wire.write(13);
  Wire.write(9);
  Wire.write(0x40);
  Wire.write(0x7f);
  Wire.write(0xff);
  Wire.endTransmission(false);*/
  
  // reset
  Wire.beginTransmission(ADDR_APP);
  Wire.write(0x04);
  Wire.write(0x32);
  Wire.write(2); // reset
  Wire.endTransmission(true);
  
  Wire.beginTransmission(ADDR_APP);
  Wire.write(0x04);
  Wire.write(0x32);
  Wire.write(0); // no reset
  Wire.endTransmission(true);
  
  
  // total rx
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x06);
  Wire.write(0x3d);
  Wire.write(13);
  Wire.endTransmission(false);
  
  while (!digitalRead(PIN_RDY)) {
    Serial.print("waiting for RDY3...\r\n");
    delay(100);
  }
  
  // total tx
  Wire.beginTransmission(ADDR_APP);
  Wire.write(0x06);
  Wire.write(0x3e);
  Wire.write(9);
  Wire.endTransmission(false);
  
  while (!digitalRead(PIN_RDY)) {
    Serial.print("waiting for RDY4...\r\n");
    delay(100);
  }*/
  
  // set mode
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x05);
  Wire.write(0x7a);
  Wire.write(1<<7); // manual control
  Wire.endTransmission(false);*/
  
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x05);
  Wire.write(0x7b);
  Wire.write(10); // lo byte (ms)
  Wire.endTransmission(false);*/
  
  // system config 1
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x05);
  Wire.write(0x8e);
  Wire.write(1<<7|1<<6); // MANUAL_CONTROL|SETUP_COMPLETE
  Wire.endTransmission(false);
  
  // system control 0
  Wire.beginTransmission(ADDR_APP);
  Wire.write(0x04);
  Wire.write(0x31);
  Wire.write(0); // MODE_SELECT (active=000)
  Wire.endTransmission(false);*/
  
  // rate (ms)
  /*Wire.beginTransmission(ADDR_APP);
  Wire.write(0x05);
  Wire.write(0x7b);
  Wire.write(10); // 10ms in active mode
  Wire.endTransmission(false);*/
}

byte addr1 = 0x00;
byte addr2 = 0x11;

//byte addr1 = 0x05;
//byte addr2 = 0x7a;

byte buf[80];
int16_t lastx = 0, lasty = 0;
byte ignore_next = 1;

// addrs: 
// 00/01: product number (40)
// 02/03: project number (15)
// 04/05: version (2/2)
// 

int pressed_time = 0;
int moved_while_pressed = 0;
int pressed_button = 0;
unsigned int cycle = 0;
unsigned int clicked_in_cycle = 0;
int wheeling = 0;

#define MOVE_THRS 3
#define PRESS_TIME 6

void loop()
{
  int rdy = digitalRead(PIN_RDY);
  
  if (rdy) {
    Wire.beginTransmission(ADDR_APP);
    Wire.write(byte(addr1));
    Wire.write(byte(addr2));
    Wire.endTransmission(false);
    Wire.requestFrom(ADDR_APP,12); // this sends stop
    
    // interesting addrs: 240, 241, 0,1,2,3,4,(5,6)
  
    //Serial.print("ADDR ");
    //Serial.print(addr);
    //Serial.print("===================================\r\n");
    int i=0;
    while (Wire.available())
    {
      int f = Wire.read();
      //Serial.print(f);
      //Serial.print(' ');
      buf[i++] = f;
      //if (i>=36) break;
    }
    //Serial.print("\r\n");
    
    //addr++;
    //if (addr>4) addr=0;
    //Serial.print(cycle-clicked_in_cycle);
    //Serial.print("\r\n");
    
    if (buf[0]) {
      int16_t xpos = ((uint16_t)buf[5]<<8)|((uint16_t)buf[6]);
      int16_t ypos = ((uint16_t)buf[7]<<8)|((uint16_t)buf[8]);
      
      pressed_time++;
      
      /*Serial.print('\t');
      Serial.print(xpos);
      Serial.print('\t');
      Serial.print(ypos);*/
    
      float dx = xpos-lastx;
      float dy = ypos-lasty;
      
      //dx/=2;
      //dy/=2;
      
      /*if (cycle-clicked_in_cycle>0 && cycle-clicked_in_cycle<900) {
        if (buf[0]==1) {
          Mouse.press(MOUSE_LEFT);
          pressed_button = 1;
        }
      }*/
      
      if (!wheeling) {
        if (!pressed_button && buf[0]==1) {
          pressed_button = 1;
        }
        
        if (buf[0]==2 && pressed_button==1) {
          Mouse.press(MOUSE_LEFT);
          pressed_button = 2;
        }
      }
        
      if (!pressed_button && buf[0]==3) {
        Mouse.press(MOUSE_RIGHT);
        pressed_button = 3;
        wheeling = 0;
      }
      
      if (!ignore_next) {
        if (dx>MOVE_THRS || dx<-MOVE_THRS || dy>MOVE_THRS || dy<-MOVE_THRS) {
          moved_while_pressed = 1;
        }
        
        if (buf[0]==2 && !pressed_button) {
          if (dy>127)  dy = 127;
          if (dy<-127) dy = -127;
          
          dy/=5;
          
          if (dy>0 && dy<1) dy=1;
          
          Mouse.move(0,0,-dy);
          wheeling = 1;
          
          //Serial.print("wheeling");
          //Serial.print("\r\n");
          
        } else if (!wheeling) {
            
          //Serial.print("\tdx ");
          //Serial.print(dx);
          //Serial.print("\tdy ");
          //Serial.print(dy);
          //Serial.print("\r\n");
          
          dx=dx*1.6;
          dy=dy*1.2;
          
          if (dx<100 && dx>=-100 && dy<100 && dy>=-100) {
            Mouse.move(dx,dy);
          }
        }
      }
      ignore_next = 0;
      lastx = xpos;
      lasty = ypos;
    } else {
      ignore_next = 1;
      
      if (!wheeling && pressed_button==1 && pressed_time>0 && pressed_time<PRESS_TIME && !moved_while_pressed) {
        Mouse.click(MOUSE_LEFT);
        clicked_in_cycle = cycle;
      }
      if (pressed_button==2) {
        Mouse.release(MOUSE_LEFT);
      }
      if (pressed_button==3) {
        Mouse.release(MOUSE_RIGHT);
      }
      
      pressed_time = 0;
      pressed_button = 0;
      moved_while_pressed = 0;
      wheeling = 0;
    }
    
    // end cycle
    Wire.beginTransmission(ADDR_APP);
    Wire.write(byte(0xee));
    Wire.write(byte(0xee));
    Wire.write(byte(0xff));
    Wire.endTransmission();
  }
  cycle++;
  delay(1);
}

