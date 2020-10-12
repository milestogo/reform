# MNT Reform 2.0D-4 Electronic System Components

<iframe src="system-diagram.svg" width="75%" height="100%"></iframe>
<style>
@import url('inter.css');
body {
  font-family: 'Inter', sans-serif;
  margin-left: 77%;
}
iframe {
  position: fixed;
  left: 0;
  top: 0;
  border: 0;
}
:target {
  background-color: #ffa;
}
</style>

This is an interactive block diagram of the MNT Reform open hardware laptop. Click on a  label in the diagram to jump to the corresponding bit of information.

For general information, visit the [MNT Reform Website](https://mntre.com/reform).

- [Motherboard PCB Explorer](https://mntre.com/reform2-ibom/reform2-motherboard/ibom.html)

## System-on-Module: Boundary Devices Nitrogen8M_SOM

The default SOM of Reform.

- [Website](https://boundarydevices.com/product/nitrogen8m-som/)
- [Schematic](https://boundarydevices.com/download/36053/)
- Mating Connector: SO-DIMM 200, Part Number: [TE 1717254-1]( https://www.te.com/global-en/product-1717254-1.html)

### System-on-Chip: NXP i.MX8M

The default SOC of Reform.

- [Data Sheet](https://www.nxp.com/docs/en/data-sheet/IMX8MDQLQCEC.pdf)
- [Reference Manual](https://www.nxp.com/webapp/Download?colCode=IMX8MDQLQRM)

#### Cortex-A53 {#cortex-a53}

The four main 64-bit ARM cores of the default SOC of Reform. The bootloader and operating system usually run on these processors.

- Reference Manual: [PDF](http://docs-api-peg.northeurope.cloudapp.azure.com/assets/ddi0500/g/DDI0500G_cortex_a53_trm.pdf)
- Clock Frequency: 1500MHz (or lower to conserve power)
- Instruction Set: ARMv8-A

#### Cortex-M4F {#cortex-m4f}

The additional 32-bit ARM CPU core of the default SOC of Reform. It is currently unused.

- Reference Manual: [PDF](http://infocenter.arm.com/help/topic/com.arm.doc.ddi0439b/DDI0439B_cortex_m4_r0p0_trm.pdf)
- Instruction Set: ARMv7-M

#### Verisilicon Vivante GC7000L GPU {#gpu}

The GPU in the i.MX8M SOM. Official documentation is not public, but most of its functionality has been reverse engineered by the etnaviv project.

- Shader Cores: 4
- Triangles per Second: 267Mtri/s
- GL versions with open source drivers OpenGL ES 2.0, OpenGL 2.1
- Documentation: See main i.MX8M Manual for integration in SOC
- [Driver (Kernel Part)](https://github.com/torvalds/linux/tree/master/drivers/gpu/drm/etnaviv)
- [Driver (Mesa Part)](https://cgit.freedesktop.org/mesa/mesa/tree/src/gallium/drivers/etnaviv)

#### MIPI DSI {#mipi-dsi}

i.MX8M has a MIPI DSI block by Northwest Logic and a DSI PHY by Mixel. Both have open source drivers in the Linux kernel. Reform accepts MIPI DSI signal on the motherboard header J24. The DSI to eDP Converter converts the signal to eDP to drive the display panel.

- [NWL Driver](https://lore.kernel.org/linux-arm-kernel/cover.1586427783.git.agx@sigxcpu.org/)
- [PHY Driver](drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c)

#### SAI {#sai}

i.MX8M has multiple SAI ports for digital audio. Reform uses only one of them, SAI2. It connects stereo output and mono input to/from the WM8960 DAC/ADC chip on the Reform motherboard.

- [Driver](https://github.com/torvalds/linux/tree/master/sound/soc/fsl/fsl_sai.c)

#### I²C {#i2c}

I²C (Inter-Integrated Circuit) is a relatively low speed, 2-pin internal serial bus commonly used to connect chips with each other via addressed register reads and writes. In Reform, I²C is used in multiple places:

- Connecting the RTC (Realtime Clock) chip to the SoC.
- Controlling the WM8960 DAC/ADC chip from the SoC.
- In the Trackball: The Atmega32U2 talks to the motion sensor via I²C.
- In the Trackpad: The Atmega32U2 talks to the capacitive touch sensor via I²C.
- In the Keyboard: The Atmega32U4 controls the OLED display via I²C.

- [Driver (i.MX8M)](https://github.com/torvalds/linux/tree/master/i2c/busses/i2c-imx.c)

#### SPI {#spi}

SPI, the Serial Peripheral Interface, is another digital interface for communication between two chips. In Reform, there is a yet to be used SPI connection between the SoC and the LPC.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/spi/spi-imx.c)

#### PWM {#pwm}

PWM stands for Pulse Width Modulation. With the default SoC, PWM4 is used to drive the internal display's backlight brightness.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/pwm/pwm-imx27.c)

#### PCIe {#pcie}

Reform has physical slots on the motherboard for two mobile PCIe form factors: mPCIe and M.2 (also called NGFF) Key M. Each is connected to one of the two PCIe controllers of the SoC. Each controller has a single PCIe lane.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/pci/controller/dwc/pci-imx6.c)

#### UART {#uart}

UART (Universal Asynchronous Receiver/Transmitter) is a type of serial port. In Reform, UARTs 1 and 2 of the default SoC are brought out to two 3-pin headers. UART1 (header J18, labelled SER2) exposes the default serial console. Connect a USB-UART cable from this header to another computer and set it to 115200 baud, 8N1. Then you can control the bootloader and see early kernel boot output.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/tty/serial/imx.c)

#### HDMI {#hdmi}

The HDMI/DP block can encode and transfer framebuffers over HDMI or DisplayPort (muxed on the same signal lines). The driver has not yet been upstreamed by NXP and requires a signed non-ARM blob (Xtensa code) to be loaded into the HDMI/DP controller at boot. The vendor kernel driver can be hacked into a mainline kernel.

- [HDMI PHY Driver in vendor kernel](https://github.com/boundarydevices/linux-imx6/blob/boundary-imx_5.4.x_1.0.0-pass1/drivers/gpu/drm/imx/cdn-mhdp-hdmi-phy.c)
- [HDMI TX Driver in vendor kernel](https://github.com/boundarydevices/linux-imx6/tree/boundary-imx_5.4.x_1.0.0-pass1/drivers/gpu/drm/bridge/cadence)

#### USB3 {#usb3}

Reform has 3 external USB 3.0 ports and two internal USB 2.0 ports. All of these are derived from the two USB 2.0/3.0 root controllers in the SoC. One root controller (USB2) goes directly to the external USB port J17. The other controller, USB1 is split into the four remaining ports via the [USB hub chip](#usb-hub) on the motherboard.

- [PHY Driver](https://github.com/torvalds/linux/tree/master/drivers/phy/freescale/phy-fsl-imx8mq-usb.c)

#### MMC/SD {#mmc}

Reform uses both USDHC MMC/SD controllers of i.MX8M:

- The first controller connects to an eMMC flash disk on the SOM (usually 8GB in size).
- The second controller connects to the SD card slot on the motherboard via a level shifter. The level shifter converts between the SoC's 1.8V and the SD card's 3.3V signal levels.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/mmc/host/sdhci-esdhc-imx.c)

#### DDRC {#ddrc}

The DDRC connects the physical LPDDR4 RAM chip to the blocks inside of the SOC, including CPU and GPU.

- [DDRC Devfreq Driver](https://github.com/torvalds/linux/tree/master/drivers/devfreq/imx8m-ddrc.c)

#### ETH MAC {#eth-mac}

Ethernet in Reform is made from 3 parts (MAC, PHY and the connector with built-in magnetics). The MAC, which is a block in the SoC. In the case of i.MX8M, this is called FEC.

- [FEC Driver](https://github.com/torvalds/linux/tree/master/drivers/net/ethernet/freescale/fec_main.c)

### ETH PHY {#eth-phy}

The PHY part of the Ethernet interface is a chip on the SOM. The default SOM has an Atheros AR8035 PHY, which is driven in Linux by a generic PHY driver.

- [Datasheet](https://media.digikey.com/pdf/data%20sheets/csr%20pdfs/ar8035_ds_(atheros)_mar2011.pdf)

## USB Hub {#usb-hub}

Reform has a TI TUSB8041 USB Hub chip with four downstream ports, two of which lead to external USB3.0 connectors.

- [Website](https://www.ti.com/product/TUSB8041)
- [Datasheet](https://www.ti.com/lit/ds/symlink/tusb8041.pdf?&ts=1590007407171)

## Battery-Backed Realtime Clock {#rtc}

The Reform motherboard has a NXP PCF8523T realtime clock chip that is backed by a 3.3V lithium coin cell when the system is unpowered. It is accessed by the SoC via [I²C](#i2c).

- [RTC Datasheet](https://www.nxp.com/docs/en/data-sheet/PCF8523.pdf)
- Coin cell standard: CR1220

## DSI to eDP Converter {#dsi2edp}

The Reform motherboard has a TI SN65DSI86 (variant SN65DSI86IPAPQ1) chip that converts [MIPI-DSI](#dsi) signals to eDP signals that the built-in [display panel](#panel) can understand. The DSI output on the default SOM is available on a flat cable connector. A short, 30 pin FPC cable goes from the SOM into the motherboard's MIPI-DSI input connector directly below the SOM. The DSI signals are routed from there to the SN65DSI86 chip.

The eDP signals are available on the 2x15 pin, 2mm DuPont header J24. Normally, a cable is plugged into this header, routed through the right-hand screen hinge and it's IPEX connector side plugged into the display panel.

- Input DSI lanes: 4 + Clock
- Output eDP lanes: 2 + AUX
- Color depth: 8 bit per color channel (24 bit per pixel)
- Standard Resolution: 1920x1080 @ 60 FPS
- [SN65DSI86 Datasheet](https://www.ti.com/lit/ds/symlink/sn65dsi86-q1.pdf?&ts=1590150753809)

## Audio DAC/ADC {#dac}

The Audio DAC/ADC converts between the [digital SAI audio signals](#sai) and the signals on the [audio jack](#audiojack) and the [speakers](#speakers). It can drive both speakers and headphones with independent volumes.

- Model: Cirrus/Wolfson WM8960
- [Datasheet](https://statics.cirrus.com/pubs/proDatasheet/WM8960_v4.4.pdf)

## TRRS 3.5mm Audio Jack {#audiojack}

The 3.5mm audio jack, also called a TRRS jack (Tip/Ring/Ring/Sleeve) can be used to connect headphones, an external power amplifier or a headset with integrated microphone. 

The audio jack uses the CTIA standard to define which signals are located on which contacts on the plug:

- Tip: Left Speaker
- First Ring: Right Speaker
- Second Ring: Microphone
- Sleeve: Ground

## System Controller {#lpc}

Except for extreme undervoltage conditions (battery cells below 2.5V), the LPC is always running a C program that implements a state machine which watches over the battery cells and controls their charging and discharging/balancing.

In addition, the LPC can toggle the main power rails in the system on and off via GPIOs going to the relevant voltage converters and load switches.

The LPC can be directly controlled by [Circle commands given via the keyboard](#kbctrl).

Model: NXP LPC11U24

- [Datasheet](https://www.nxp.com/docs/en/data-sheet/LPC11U2X.pdf)
- [Firmware](https://source.mntmn.com/MNT/reform/src/branch/master/reform2-lpc-fw/src/boards/reform2)

## Cell Monitor/Balancer {#balancer}

- Model: Analog/Linear LTC6803-4
- [Datasheet](https://www.analog.com/media/en/technical-documentation/data-sheets/680324fa.pdf)

## Battery Voltage/Current Monitor {#ina}

- Model: Texas Instruments INA260
- [Datasheet](http://www.ti.com/lit/ds/symlink/ina260.pdf?&ts=1590151953117)

## Buck-Boost DC-DC/Charger {#ltc4020}

- Model: Analog/Linear LTC4020
- [Datasheet](https://www.analog.com/media/en/technical-documentation/data-sheets/4020fd.pdf)

## Barrel Jack (Wall Power) {#barreljack}

The barrel jack accepts DC voltage in the range of 7V to 32V. The default power supply shipped with MNT Reform is specified at 24V / 2A.

- Receptacle: Switchcraft RAPC712X
- Inner diameter: 2.5mm
- Outer diameter: 5.5mm
- Poles: Positive on inner pole, negative on outer barrel.

## 5V Power Rail {#r5v}

- Type: Buck
- Model: Texas Instruments LM2677SX-5
- [Datasheet](http://www.ti.com/lit/ds/symlink/lm2677.pdf?&ts=1590152214783)
- Max Current: 5A

## 3V3 Power Rail {#r3v3}

- Model: Texas Instruments LM2677SX-3.3
- [Datasheet](http://www.ti.com/lit/ds/symlink/lm2677.pdf?&ts=1590152214783)
- Max Current: 5A

## 3V3 Standby Power Rail {#standby}

- Type: Buck
- Model: Texas Instruments LMR16006YQ3
- [Datasheet](http://www.ti.com/lit/gpn/lmr16006y-q1)

## 1V8 Power Rail {#r1v8}

- Type: LDO
- Model: Texas Instruments TLV1117-18
- [Datasheet](http://www.ti.com/lit/ds/symlink/tlv1117.pdf?&ts=1590152118151)

## 1V5 Power Rail {#r1v5}

- Type: Buck
- Model: Texas Instruments TLV62568DBV
- [Datasheet](http://www.ti.com/lit/ds/symlink/tlv62568.pdf?&ts=1590152066123)

## 1V2 Power Rail {#r1v2}

- Type: Buck
- Model: Texas Instruments TLV62568DBV
- [Datasheet](http://www.ti.com/lit/ds/symlink/tlv62568.pdf?&ts=1590152066123)

## Keyboard Controller {#kbctrl}

- Model: Microchip/Atmel Atmega32U4
- [Datasheet](http://ww1.microchip.com/downloads/en/devicedoc/atmel-7766-8-bit-avr-atmega16u4-32u4_datasheet.pdf)
- [Keyboard Firmware](https://source.mntmn.com/MNT/reform/src/branch/master/reform2-keyboard-fw)
- [Keyboard PCB Explorer](https://mntre.com/reform2-ibom/reform2-keyboard/ibom.html)

The following shortcuts are available indepdently of the main processor in Reform, even when the system is powered off. Acting like a primitive terminal, most shortcuts trigger a command string to be sent over the keyboard's UART to the [LPC](#lpc). The LPC then responds with characters to display on the [OLED](#oled).

In the 2.0D-3/D-4 development version:

- *Circle + 1:* Turn on the main system (powers up 5V, 3V3 and PCIe rails)
- *Circle + 0:* Turn off the main system (powers down 5V, 3V3 and PCIe rails)
- *Circle + 2:* Turn off the OLED display (turned back on by any other command)
- *Circle + F1:* Decrease keyboard backlight brightness
- *Circle + F2:* Increase keyboard backlight brightness
- *Circle + V:* Show voltages of all cells, total voltage and Amps going in or out of batteries plus charge percentage estimation.
- *Circle + Y:* Show voltage and amps as measured by the [INA260](#ina) voltage/current monitor.
- *Circle + S:* Display LPC status (idle/charging, overvoltage/balancing, undervoltage)

Keep in mind that *Circle + 0* powers off the system immediately, so save your work and make sure it is synced to disk before powering off. For example, use the `sync` or `shutdown` commands.

## Keyboard and Trackball Keys {#kbkeys}

The keyboard and trackball modules both use the same type of switch.

- Standard Keyswitch Model: Kailh PG1350 Low Profile Choc Brown.
- [PG1350 Datasheet](https://www.kailhswitch.com/uploads/201915927/CPG135001D02-1_Choc_Burnt_Orange.pdf)
- Keyboard Keycaps: Kailh Black Low Profile / Choc Keycap 1.5U and 1U.

The trackball has custom keycaps designed by MNT Research and 3D printed in an SLA process.

- [Trackball 3D Printed Parts](https://github.com/mntmn/reform/tree/master/reform2-3d-printed-parts/reform2-stl)

## Keyboard OLED {#oled}

The OLED display sits on its own little PCB on top of the keyboard, and is powered and controlled by the [keyboard's MCU](#kbctrl) independently from the computer's main processor.

The display is currently used to show the results of [Circle commands given via the keyboard](#kbctrl).

- Model: Generic SSD1306 128x32 Pixel OLED, Monochrome, I²C Interface

## Trackball Controller {#tbctrl}

- Model: Microchip/Atmel Atmega32U2
- [Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/doc7799.pdf)
- [Firmware](https://source.mntmn.com/MNT/reform/src/branch/master/reform2-trackball-fw)
- [Trackball 3D Printed Parts](https://source.mntmn.com/MNT/reform/src/branch/master/reform2-3d-printed-parts/reform2-stl)
- [Trackball PCB Explorer](https://mntre.com/reform2-ibom/reform2-trackball/ibom.html)

## Trackball Sensor {#tbsensor}

- Model: Pixart PAT9125EL
- [Datasheet](https://www.codico.com/shop/media/datasheets/PixArt_PAT9125EL_InfoBrief.pdf)
- [Trackball Sensor PCB Explorer](https://mntre.com/reform2-ibom/reform2-trackball-sensor/ibom.html)

## Trackpad Controller {#tpcrtl}

- Model: Microchip/Atmel Atmega32U2
- [Firmware](https://source.mntmn.com/MNT/reform/src/branch/master/reform2-trackpad-fw)
- [Trackpad PCB Explorer](https://mntre.com/reform2-ibom/reform2-trackpad/ibom.html)

## Trackpad Sensor {#tpsensor}

- Model: Azoteq TPS65-201A-S
- [Datasheet](https://www.mouser.de/datasheet/2/42/proxsense_i2c_trackpad_datasheet-1626845.pdf)

## Display Panel {#panel}

The display panel is connected to two main types of signals via a single IPEX connector:

- eDP (embedded DisplayPort), via the [MIPI-DSI to eDP converter](#dsi2edp)
- [PWM](#pwm) to set the LED backlight's brightness. The brightness is set via the duty cycle of the PWM signal, while the frequency is set at a fixed value (default: 10KHz).

- Model: Innolux N125HCE-GN1
- [Panelook Information](http://www.panelook.com/N125HCE-GN1_Innolux_12.5_LCM_overview_28140.html)

## Speakers {#speakers}

Reform uses 2x 8 Ohm, 1 Watt mobile speakers mounted below the [display panel](#panel). They are powered by the [Audio DAC](#dac).

- Model: PUI AS01808AO-3-R
- [Datasheet](http://www.puiaudio.com/pdf/AS01808AO-3-R.pdf)

## Battery Cells {#cells}

Reform uses 8 battery cells with LiFePO4 (Lithium Iron Phosphate) chemistry.

### Important Warnings of Potential Fire and Injury Hazards

- *Do not use batteries of any other chemistry in MNT Reform!*
- *Double check polarity of battery cells and make sure they are the right way around!*
- *The cells are connected in series, resulting in a 28.8V total voltage with high current capability. If shorted, traces can easily be burned and sparks could ignite nearby material.* - *Do not use metal tools or open wires inside of MNT Reform!*

- Chemistry: LiFePO4
- Form Factor: 18650
- Voltage: 3.2V
- Cell Charge Voltage: 3.6V
- Configuration: Series (28.8V)

### Examples of compatible cells

- [Battery Space](https://www.batteryspace.com/lifepo4-18650-rechargeable-cell-3-2v-1500-mah-8-4a-rate-4-32wh-ul-listed-un38-3-passed-ndgr.aspx)
- [ENERpower](https://enerprof.de/akkus/akkus-lifepo4/akkuzellen-lifepo4/akkuzellen-lifepo4-18650/32/enerpower-18650-lifepo4-3-2v-1800-mah?c=26)
- [Lithium Werks](https://www.18650batterystore.com/Lithium-Werks-p/lithiumwerks-apr18650m1b.htm)
