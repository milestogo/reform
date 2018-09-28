topics todo
===========

faq
- how full/empty is the battery?
- how do i change the display brightness?

  brightnessctl s [1-7]
  
- what temperature does the cpu/system have?

  cat /sys/class/thermal/thermal_zone0/temp
  
- how do i use the proprietary hardware video decoder?

- what does the boot rom do?
- where are the schematics for tinyRex?
- where are the schematics for REFORM?

  The schematics of the motherboard, keyboard and trackball are in the git repository https://github.com/mntmn/reform
  
- how do i use an LTE modem/WWAN?

  The only modem tested so far is Huawei XYZ999. It presents itself as 5 serial ports (tty*) and an ethernet device in the system.
  You have to connect with a serial terminal like screen to /dev/tty* and issue AT commands to unlock the SIM and connect to the internet.
  
- how do i setup WiFi on the console?

  wicd-curses
  
- can i use a discrete graphics card by nvidia or amd?
- what is the resolution of the display?

The internal display has a resolution of 1366x768, but it is configured in the device tree (DTS) as 1368x768 to avoid problems with graphics drivers/hardware that can only handle multiples of 8 as the width.
  
- what is the maximum resolution of HDMI?

The maximum tested resolution of the HDMI output is 1920x1200.
  
- how do i use the microphone input in the headphone jack?
- where are the speakers?

Reform does not include any speakers, but a stereo speaker module is in the making. You can also build your own by connecting an amplifier and speakers to the motherboard header labelled Line Out.
  
- how do i use SPI, I2C, GPIO?
- how do i use CSI, DSI?
- how can i use the bootrom's usb device mode?
- how do i print/make my own case part?
- how do i make a new keycap?
- how to use OpenGL/ES hardware acceleration in Xorg?
- how to use OpenGL/ES hardware acceleration in wayland?
- software/game XYZ does not work, is there a workaround?
- how can i run x86 software?
- how can i run Raspberry Pi compatible software?

