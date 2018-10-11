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

#include <LUFA/Drivers/Peripheral/SPI.h>
#include <avr/pgmspace.h>
#include <avr/io.h>
#include <stdlib.h>

#define output_low(port,pin) port &= ~(1<<pin)
#define output_high(port,pin) port |= (1<<pin)
#define set_input(portdir,pin) portdir &= ~(1<<pin)
#define set_output(portdir,pin) portdir |= (1<<pin)

// Registers
#define Product_ID  0x00
#define Revision_ID 0x01
#define Motion  0x02
#define Delta_X_L 0x03
#define Delta_X_H 0x04
#define Delta_Y_L 0x05
#define Delta_Y_H 0x06
#define SQUAL 0x07
#define Raw_Data_Sum  0x08
#define Maximum_Raw_data  0x09
#define Minimum_Raw_data  0x0A
#define Shutter_Lower 0x0B
#define Shutter_Upper 0x0C
#define Control 0x0D
#define Config1 0x0F
#define Config2 0x10
#define Angle_Tune  0x11
#define Frame_Capture 0x12
#define SROM_Enable 0x13
#define Run_Downshift 0x14
#define Rest1_Rate_Lower  0x15
#define Rest1_Rate_Upper  0x16
#define Rest1_Downshift 0x17
#define Rest2_Rate_Lower  0x18
#define Rest2_Rate_Upper  0x19
#define Rest2_Downshift 0x1A
#define Rest3_Rate_Lower  0x1B
#define Rest3_Rate_Upper  0x1C
#define Observation 0x24
#define Data_Out_Lower  0x25
#define Data_Out_Upper  0x26
#define Raw_Data_Dump 0x29
#define SROM_ID 0x2A
#define Min_SQ_Run  0x2B
#define Raw_Data_Threshold  0x2C
#define Config5 0x2F
#define Power_Up_Reset  0x3A
#define Shutdown  0x3B
#define Inverse_Product_ID  0x3F
#define LiftCutoff_Tune3  0x41
#define Angle_Snap  0x42
#define LiftCutoff_Tune1  0x4A
#define Motion_Burst  0x50
#define LiftCutoff_Tune_Timeout 0x58
#define LiftCutoff_Tune_Min_Length  0x5A
#define SROM_Load_Burst 0x62
#define Lift_Config 0x63
#define Raw_Data_Burst  0x64
#define LiftCutoff_Tune2  0x65

uint8_t adns_init_complete=0;
volatile int xydat[2];

#include "PWM3360DM_srom_0x04.c"
#include "Mouse.h"

/** Buffer to hold the previously generated Mouse HID report, for comparison purposes inside the HID class driver. */
static uint8_t PrevMouseHIDReportBuffer[sizeof(USB_WheelMouseReport_Data_t)];

/** LUFA HID Class driver interface configuration and state information. This structure is
 *  passed to all HID Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
USB_ClassInfo_HID_Device_t Mouse_HID_Interface =
	{
		.Config =
			{
				.InterfaceNumber              = INTERFACE_ID_Mouse,
				.ReportINEndpoint             =
					{
						.Address              = MOUSE_EPADDR,
						.Size                 = MOUSE_EPSIZE,
						.Banks                = 1,
					},
				.PrevReportINBuffer           = PrevMouseHIDReportBuffer,
				.PrevReportINBufferSize       = sizeof(PrevMouseHIDReportBuffer),
			},
	};



// FIXME QUESTIONABLE
int convTwosComp(int b) {
  //Convert from 2's complement
  if (b & 0x80) {
    b = -1 * ((b ^ 0xff) + 1);
  }
  return b;
}

void adns_com_begin(void) {
  // pull chip select low
  output_low(PORTB, 7);
}

void adns_com_end(void) {
  // pull chip select high
  output_high(PORTB, 7);
}

uint8_t adns_read_reg(uint8_t reg_addr) {
  adns_com_begin();
  
  // send adress of the register, with MSBit = 0 to indicate it's a read
  SPI_SendByte(reg_addr & 0x7f );
  _delay_us(100); // tSRAD
  // read data
  uint8_t data = SPI_ReceiveByte();
  
  _delay_us(1); // tSCLK-NCS for read operation is 120ns
  adns_com_end();
  _delay_us(19); //  tSRW/tSRR (=20us) minus tSCLK-NCS

  return data;
}

void adns_write_reg(uint8_t reg_addr, uint8_t data) {
  adns_com_begin();
  
  //send adress of the register, with MSBit = 1 to indicate it's a write
  SPI_SendByte(reg_addr | 0x80 );
  //sent data
  SPI_SendByte(data);
  
  _delay_us(20); // tSCLK-NCS for write operation
  adns_com_end();
  _delay_us(100); // tSWW/tSWR (=120us) minus tSCLK-NCS. Could be shortened, but is looks like a safe lower bound 
}

void adns_upload_firmware(void) {
  // send the firmware to the chip, cf p.18 of the datasheet
  //Serial.println("Uploading firmware...");

  //Write 0 to Rest_En bit of Config2 register to disable Rest mode.
  adns_write_reg(Config2, 0x20);
  
  // write 0x1d in SROM_enable reg for initializing
  adns_write_reg(SROM_Enable, 0x1d); 
  
  // wait for more than one frame period
  Delay_MS(10); // assume that the frame rate is as low as 100fps... even if it should never be that low
  
  // write 0x18 to SROM_enable to start SROM download
  adns_write_reg(SROM_Enable, 0x18); 
  
  // write the SROM file (=firmware data) 
  adns_com_begin();
  SPI_SendByte(SROM_Load_Burst | 0x80); // write burst destination adress
  _delay_us(15);
  
  // send all bytes of the firmware
  uint8_t c;
  for (int i = 0; i < firmware_length; i++) {
    c = (uint8_t)pgm_read_byte(firmware_data + i);
    SPI_SendByte(c);
    _delay_us(15);
  }

  //Read the SROM_ID register to verify the ID before any other register reads or writes.
  adns_read_reg(SROM_ID);

  //Write 0x00 to Config2 register for wired mouse or 0x20 for wireless mouse design.
  adns_write_reg(Config2, 0x00);

  // set initial CPI resolution

  // 0x01: 200
  // 0x02: 300
  // 0x31: 5000
  // 0x77: 12000
  
  adns_write_reg(Config1, 0x04);
  adns_write_reg(Angle_Snap, 0x0);
  
  adns_com_end();
}

void adns_startup(void) {
  adns_com_end(); // ensure that the serial port is reset
  adns_com_begin();
  adns_com_end();
  adns_write_reg(Power_Up_Reset, 0x5a); // force reset
  Delay_MS(50); // wait for it to reboot
  // read registers 0x02 to 0x06 (and discard the data)
  adns_read_reg(Motion);
  adns_read_reg(Delta_X_L);
  adns_read_reg(Delta_X_H);
  adns_read_reg(Delta_Y_L);
  adns_read_reg(Delta_Y_H);
  // upload the firmware
  adns_upload_firmware();
  Delay_MS(10);
  //Serial.println("Optical Chip Initialized");

  adns_init_complete = 1;
}


// SS PB7 output
// MT PB5 input
// SC PB1 output
// MO PB2 output
// MI PB3 input
// RS PB6 output

// LM PD0 input pullup
// RM PD1 input pullup

void SetupHardware(void)
{
  //#if (ARCH == ARCH_AVR8)
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	/* Disable clock division */
	clock_prescale_set(clock_div_1);

  DDRD = 0b00000000;
  DDRB = 0b11000110;
  output_high(PORTD, 0); // enable input pullup for LMB
  output_high(PORTD, 1); // enable input pullup for RMB
  
  output_high(PORTB, 6); // disable adns reset

  // no jtag plox
  //MCUCR |=(1<<JTD);
  //MCUCR |=(1<<JTD);
  
  SPI_Init(SPI_SPEED_FCPU_DIV_2 | SPI_ORDER_MSB_FIRST | SPI_SCK_LEAD_FALLING |
         SPI_SAMPLE_TRAILING | SPI_MODE_MASTER);

  adns_startup();
	USB_Init();
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

	ConfigSuccess &= HID_Device_ConfigureEndpoints(&Mouse_HID_Interface);

	USB_Device_EnableSOFEvents();
}

/** Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void)
{
	HID_Device_ProcessControlRequest(&Mouse_HID_Interface);
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
	HID_Device_MillisecondElapsed(&Mouse_HID_Interface);
}

char wheelmode = 0;

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
  if (ReportType==HID_REPORT_ITEM_Feature) return false;
  
	//USB_MouseReport_Data_t* MouseReport = (USB_MouseReport_Data_t*)ReportData;
	USB_WheelMouseReport_Data_t* MouseReport = (USB_WheelMouseReport_Data_t*)ReportData;

  int nx = 0;
  int ny = 0;

  if (adns_init_complete) {
    //write 0x01 to Motion register and read from it to freeze the motion values and make them available
    adns_write_reg(Motion, 0x01);
    adns_read_reg(Motion);

    // x and y are swapped
    nx = convTwosComp((int)adns_read_reg(Delta_Y_L));
    ny = convTwosComp((int)adns_read_reg(Delta_X_L));
  }

  if (!(PIND&1) && !(PIND&2)) {
    if (wheelmode==1) {
      wheelmode=2;
    }
  }
  else if (!(PIND&1)) {
    if (wheelmode<2) {
      MouseReport->Button |= 1;
    }
    
    if (wheelmode==0) {
      wheelmode=1;
    }
    else if (wheelmode==3 && (PIND&2)) {
      wheelmode=0;
    }
  }
  else if (!(PIND&2)) {
    if (wheelmode==0) {
      MouseReport->Button |= 2;
    }
    else if (wheelmode==3) {
      MouseReport->Button |= 4;
    }
  } else {
    if (wheelmode<2) wheelmode=0;
    if (wheelmode==2) wheelmode=3;
  }

  //if ((nx!=0 || ny!=0) && (wheelmode>0 && wheelmode<3)) wheelmode=0;
  MouseReport->Wheel = 0;
  
  if (wheelmode<2) {
    MouseReport->X = nx;
    MouseReport->Y = ny;
  } else if (wheelmode>=3) {
    MouseReport->Wheel = -ny/3;
  }

	*ReportSize = sizeof(USB_WheelMouseReport_Data_t);

  return true;
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
	// Unused (but mandatory for the HID class driver) in this demo, since there are no Host->Device reports
}


int main(void)
{
	SetupHardware();
	GlobalInterruptEnable();

	for (;;)
	{
		HID_Device_USBTask(&Mouse_HID_Interface);
		USB_USBTask();
	}
}

