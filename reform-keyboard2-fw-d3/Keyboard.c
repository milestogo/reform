/*
  MNT Reform v2 Keyboard Firmware
  Copyright 2019  Lukas F. Hartmann / MNT Research GmbH, Berlin
  lukas@mntmn.com  
*/
/*
             LUFA Library
     Copyright (C) Dean Camera, 2018.

  dean [at] fourwalledcubicle [dot] com
           www.lufa-lib.org
*/
/*
  Copyright 2018  Dean Camera (dean [at] fourwalledcubicle [dot] com)

  Permission to use, copy, modify, distribute, and sell this
  software and its documentation for any purpose is hereby granted
  without fee, provided that the above copyright notice appear in
  all copies and that both that the copyright notice and this
  permission notice and warranty disclaimer appear in supporting
  documentation, and that the name of the author not be used in
  advertising or publicity pertaining to distribution of the
  software without specific, written prior permission.

  The author disclaims all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

#include "Config/LUFAConfig.h"
#include "Keyboard.h"
#include <avr/io.h>
#include "LUFA/Drivers/Peripheral/Serial.h"
#include "ssd1306.h"
#include "scancodes.h"

/** Buffer to hold the previously generated Keyboard HID report, for comparison purposes inside the HID class driver. */
static uint8_t PrevKeyboardHIDReportBuffer[sizeof(USB_KeyboardReport_Data_t)];

/** LUFA HID Class driver interface configuration and state information. This structure is
 *  passed to all HID Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_HID_Device_t Keyboard_HID_Interface =
  {
    .Config =
      {
        .InterfaceNumber              = INTERFACE_ID_Keyboard,
        .ReportINEndpoint             =
          {
            .Address              = KEYBOARD_EPADDR,
            .Size                 = KEYBOARD_EPSIZE,
            .Banks                = 1,
          },
        .PrevReportINBuffer           = PrevKeyboardHIDReportBuffer,
        .PrevReportINBufferSize       = sizeof(PrevKeyboardHIDReportBuffer),
      },
  };


#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)

const uint8_t matrix[15*6] = {
  KEY_ESCAPE, KEY_F1, KEY_F2, KEY_F3, KEY_F4, KEY_F5, KEY_F6, KEY_F7, KEY_F8, KEY_F9, KEY_F10, KEY_F11, KEY_F12, HID_KEYBOARD_SC_EXSEL, HID_KEYBOARD_SC_EXSEL,
  
  KEY_GRAVE_ACCENT_AND_TILDE, KEY_1, KEY_2, KEY_3, KEY_4, KEY_5, KEY_6, KEY_7, KEY_8, KEY_9, KEY_0, KEY_MINUS_AND_UNDERSCORE, KEY_EQUAL_AND_PLUS, KEY_BACKSPACE, 0,
  
  KEY_TAB, KEY_Q, KEY_W, KEY_E, KEY_R, KEY_T, KEY_Y, KEY_U, KEY_I, KEY_O, KEY_P, KEY_OPENING_BRACKET_AND_OPENING_BRACE, KEY_CLOSING_BRACKET_AND_CLOSING_BRACE, KEY_BACKSLASH_AND_PIPE, 0,
  
  HID_KEYBOARD_SC_LEFT_CONTROL, KEY_F13, KEY_A, KEY_S, KEY_D, KEY_F, KEY_G, KEY_H, KEY_J, KEY_K, KEY_L, KEY_SEMICOLON_AND_COLON, KEY_APOSTROPHE_AND_QUOTE, KEY_ENTER, 0,
  
  HID_KEYBOARD_SC_LEFT_SHIFT, KEY_DELETE, KEY_Z, KEY_X, KEY_C, KEY_V, KEY_B, KEY_N, KEY_M, HID_KEYBOARD_SC_COMMA_AND_LESS_THAN_SIGN, HID_KEYBOARD_SC_DOT_AND_GREATER_THAN_SIGN, KEY_SLASH_AND_QUESTION_MARK,  HID_KEYBOARD_SC_UP_ARROW, HID_KEYBOARD_SC_RIGHT_SHIFT, 0,
  
  HID_KEYBOARD_SC_EXSEL, HID_KEYBOARD_SC_LEFT_GUI, HID_KEYBOARD_SC_LEFT_CONTROL, KEY_SPACE, HID_KEYBOARD_SC_LEFT_ALT, HID_KEYBOARD_SC_RIGHT_ALT, KEY_SPACE, HID_KEYBOARD_SC_PAGE_UP, HID_KEYBOARD_SC_PAGE_DOWN, HID_KEYBOARD_SC_LEFT_ARROW, HID_KEYBOARD_SC_DOWN_ARROW, HID_KEYBOARD_SC_RIGHT_ARROW,  0,0,0
};

// f8 = sleep
// 49 = mute
// 84 = scroll lock

char r_inbuf[10];

void gfx_clear(void) {
	for (int y=0; y<4; y++) {
		for (int x=0; x<21; x++) {
			gfx_poke(x,y,' ');
		}
	}
	iota_gfx_flush();
}

void empty_serial(void) {
	int clock = 0;
  while (Serial_ReceiveByte()>0 && clock<1000) {
		// flush serial
		clock++;
	}
}

int term_x = 0;
int term_y = 0;

void remote_receive_string(void) {
	int done = 0;
	int clock = 0;
	while (!done) {
		int chr = -1;
		clock = 0;
		while (chr==-1) {
      chr=Serial_ReceiveByte();
			clock++;
			Delay_MS(1);
			if (clock>500) goto timeout;
		}
    int poke_chr = chr;
    if (chr=='\r') poke_chr=' ';
		gfx_poke(term_x,term_y,poke_chr);
		gfx_poke(term_x+1,term_y,' ');
		iota_gfx_flush();
		term_x++;
		if (term_x>=20) {
			term_x=0;
			term_y++;
			if (term_y>=3) {
				term_y=0;
			}
		}
		if (chr=='\r') done = 1;
	}
timeout:
  if (!done) gfx_poke(20,0,'T');
	empty_serial();
}

void remote_turn_on_som(void) {
	gfx_clear();
	empty_serial();

	term_x = 0;
	term_y = 0;

  Serial_SendByte('1');
  Serial_SendByte('p');
  Serial_SendByte('\r');
	Delay_MS(1);
  remote_receive_string();
}

void remote_turn_off_som(void) {
	gfx_clear();
	empty_serial();

	term_x = 0;
	term_y = 0;

  Serial_SendByte('0');
  Serial_SendByte('p');
  Serial_SendByte('\r');
	Delay_MS(1);
  remote_receive_string();
}

void remote_get_voltages(void) {
	gfx_clear();
	empty_serial();
	
	term_x = 0;
	term_y = 0;

	for (int i=0; i<8; i++) {
		Serial_SendByte('0'+i);
		Serial_SendByte('v');
		Serial_SendByte('\r');
		Delay_MS(1);
    remote_receive_string();
	}
}

void remote_get_status(void) {
	gfx_clear();
	empty_serial();
	
	term_x = 0;
	term_y = 0;

	Serial_SendByte('s');
	Serial_SendByte('\r');
	Delay_MS(1);
	remote_receive_string();
}

void remote_get_cells(void) {
	gfx_clear();
	empty_serial();
	
	term_x = 0;
	term_y = 0;

	for (int i=0; i<8; i++) {
		Serial_SendByte('0'+i);
		Serial_SendByte('c');
		Serial_SendByte('\r');
		Delay_MS(1);
		remote_receive_string();
  }
}

void remote_get_sys_voltage(void) {
	gfx_clear();
	empty_serial();
	
	term_x = 0;
	term_y = 0;

	Serial_SendByte('V');
	Serial_SendByte('\r');
	Delay_MS(1);
	remote_receive_string();
	
  Serial_SendByte('a');
	Serial_SendByte('\r');
	Delay_MS(1);
	remote_receive_string();

  Serial_SendByte('C');
	Serial_SendByte('\r');
	Delay_MS(1);
	remote_receive_string();
}

int16_t pwmval = 2;

void kbd_brightness_init() {
  // clear/set, WGM1:0 set (Phase correct PWM)
  TCCR0A = (1 << 7) | (0 << 6) | (0<<1) | 1;

  // 3=WGM02, (cs02 2:0 -> clock/256 = 100)
  TCCR0B = /*(1 << 3) |*/ (1 << 0) | (0 << 1) | 1;

  // initial brightness
  OCR0A = 2;
}

void kbd_brightness_inc() {
  pwmval+=2;
  if (pwmval>=10) pwmval = 10;
  OCR0A = pwmval;
  gfx_poke(9,2,'+');
  iota_gfx_flush();
}

void kbd_brightness_dec() {
  pwmval-=2;
  if (pwmval<0) pwmval = 0;
  OCR0A = pwmval;
  gfx_poke(9,2,'-');
  iota_gfx_flush();
}

char metaPressed = 0;
uint8_t lastMetaKey = 0;

void process_keyboard(char usb_report_mode, USB_KeyboardReport_Data_t* KeyboardReport) {
  uint8_t metaPressedNow = 0;
  // how many keys are pressed this round
  uint8_t usedKeyCodes = 0;
  uint8_t totalPressed = 0;

  // pull ROWs low one after the other
  for (int y=0; y<6; y++) {

    switch (y) {
    case 0: output_low(PORTB, 6); break;
    case 1: output_low(PORTB, 5); break;
    case 2: output_low(PORTB, 4); break;
    case 3: output_low(PORTD, 7); break;
    case 4: output_low(PORTD, 6); break;
    case 5: output_low(PORTD, 4); break;
    }

    // check input COLs
    for (int x=0; x<14; x++) {
      uint16_t keycode = matrix[y*15+x];
      uint8_t  pressed = 0;

      // column pins are all over the place
      switch (x) {
      case 0:  pressed = !(PIND&(1<<5)); break;
      case 1:  pressed = !(PINF&(1<<7)); break;
      case 2:  pressed = !(PINE&(1<<6)); break;
      case 3:  pressed = !(PINC&(1<<7)); break;
      case 4:  pressed = !(PINB&(1<<3)); break;
      case 5:  pressed = !(PINB&(1<<2)); break;
      case 6:  pressed = !(PINB&(1<<1)); break;
      case 7:  pressed = !(PINB&(1<<0)); break;
      case 8:  pressed = !(PINF&(1<<0)); break;
      case 9:  pressed = !(PINF&(1<<1)); break;
      case 10: pressed = !(PINF&(1<<4)); break;
      case 11: pressed = !(PINF&(1<<5)); break;
      case 12: pressed = !(PINF&(1<<6)); break;
      case 13: pressed = !(PINC&(1<<6)); break;
      }

      if (pressed) {
        totalPressed++;
        
        if (keycode == HID_KEYBOARD_SC_EXSEL) {
          metaPressedNow = 1;
        } else {
          if (usb_report_mode && KeyboardReport && !metaPressed) {
            KeyboardReport->KeyCode[usedKeyCodes++] = keycode;
            }
        }

        if (metaPressed && lastMetaKey!=keycode) {
          if (keycode == KEY_0) {
            remote_turn_off_som();
          }
          else if (keycode == KEY_1) {
            remote_turn_on_som();
          }
					else if (keycode == KEY_V) {
						remote_get_voltages();
					}
					else if (keycode == KEY_C) {
						remote_get_cells();
					}
					else if (keycode == KEY_S) {
						remote_get_status();
					}
					else if (keycode == KEY_Y) {
						remote_get_sys_voltage();
					}
					else if (keycode == KEY_2) {
						iota_gfx_off();
					}
					else if (keycode == KEY_3) {
						iota_gfx_on();
          }
          else if (keycode == KEY_F1) {
            kbd_brightness_dec();
          }
          else if (keycode == KEY_F2) {
            kbd_brightness_inc();
          }
          
          lastMetaKey = keycode;
				}
      }
    }

    switch (y) {
    case 0: output_high(PORTB, 6); break;
    case 1: output_high(PORTB, 5); break;
    case 2: output_high(PORTB, 4); break;
    case 3: output_high(PORTD, 7); break;
    case 4: output_high(PORTD, 6); break;
    case 5: output_high(PORTD, 4); break;
    }
  }

  metaPressed = metaPressedNow;
  if (totalPressed<2) lastMetaKey = 0;
}

int main(void)
{
  SetupHardware();
  GlobalInterruptEnable();

  for (;;)
  {
    process_keyboard(0, NULL);
    HID_Device_USBTask(&Keyboard_HID_Interface);
    USB_USBTask();
  }
}

/** Configures the board hardware and chip peripherals for the demo's functionality. */
void SetupHardware()
{
  // Disable watchdog if enabled by bootloader/fuses
  MCUSR &= ~(1 << WDRF);
  wdt_disable();

  // Disable clock division
  clock_prescale_set(clock_div_1);

  // declare port pins as inputs (0) and outputs (1)
  DDRB  = 0b11110000;
  DDRC  = 0b00000000;
  DDRD  = 0b11011001;
  DDRE  = 0b00000000;
  DDRF  = 0b00000000;

  // initial pin states
  PORTB = 0b10001111;
  PORTC = 0b11000000;
  PORTD = 0b00100000;
  PORTE = 0b01000000;
  PORTF = 0b11111111;
  
  // disable JTAG
  MCUCR |=(1<<JTD);
  MCUCR |=(1<<JTD);

  iota_gfx_init(false);

  gfx_poke(5,1,'R');
  gfx_poke(7,1,'E');
  gfx_poke(9,1,'F');
  gfx_poke(11,1,'O');
  gfx_poke(13,1,'R');
  gfx_poke(15,1,'M');
  iota_gfx_flush();

  Serial_Init(57600, false);
  gfx_poke(5,2,'+');
  iota_gfx_flush();

  kbd_brightness_init();
  gfx_poke(6,2,'+');
  iota_gfx_flush();
  
  USB_Init();
  gfx_poke(7,2,'+');
  iota_gfx_flush();
}

/** Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
}

/** Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
}

/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
  bool ConfigSuccess = true;

  ConfigSuccess &= HID_Device_ConfigureEndpoints(&Keyboard_HID_Interface);

  USB_Device_EnableSOFEvents();
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void)
{
  HID_Device_ProcessControlRequest(&Keyboard_HID_Interface);
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
  HID_Device_MillisecondElapsed(&Keyboard_HID_Interface);
}

/** HID class driver callback function for the creation of HID reports to the host.
 *
 *  \param[in]     HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in,out] ReportID    Report ID requested by the host if non-zero, otherwise callback should set to the generated report ID
 *  \param[in]     ReportType  Type of the report to create, either HID_REPORT_ITEM_In or HID_REPORT_ITEM_Feature
 *  \param[out]    ReportData  Pointer to a buffer where the created report should be stored
 *  \param[out]    ReportSize  Number of bytes written in the report (or zero if no report is to be sent)
 *
 *  \return Boolean \c true to force the sending of the report, \c false to let the library determine if it needs to be sent
 */

bool CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
  USB_KeyboardReport_Data_t* KeyboardReport = (USB_KeyboardReport_Data_t*)ReportData;

  process_keyboard(1, KeyboardReport);
  
  *ReportSize = sizeof(USB_KeyboardReport_Data_t);
  return false;
}

/** HID class driver callback function for the processing of HID reports from the host.
 *
 *  \param[in] HIDInterfaceInfo  Pointer to the HID class interface configuration structure being referenced
 *  \param[in] ReportID    Report ID of the received report from the host
 *  \param[in] ReportType  The type of report that the host has sent, either HID_REPORT_ITEM_Out or HID_REPORT_ITEM_Feature
 *  \param[in] ReportData  Pointer to a buffer where the received report has been stored
 *  \param[in] ReportSize  Size in bytes of the received HID report
 */
void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
}

