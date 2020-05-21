# Reform 2.0D-4 Electronic System Components

<iframe src="system-diagram.svg" width="75%" height="100%"></iframe>
<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
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

## System-on-Module: Boundary Devices Nitrogen8M_SOM

The default SOM of Reform.

- [Website](https://boundarydevices.com/product/nitrogen8m-som/)
- [Schematic](https://boundarydevices.com/download/36053/)
- Mating Connector: SO-DIMM 200, Part Number: [TE 1717254-1]( https://www.te.com/global-en/product-1717254-1.html)

### System-on-Chip: NXP i.MX8M

The default SOC of Reform.

- [Data Sheet](https://www.nxp.com/docs/en/data-sheet/IMX8MDQLQCEC.pdf)
- [Reference Manual](https://www.nxp.com/webapp/Download?colCode=IMX8MDQLQRM)

Some interesting core drivers:
- drivers/clk/imx/clk-imx8mq.c
- 

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
- The second controller connects to the SD card slot on the motherboard via a level shifter.

- [Driver](https://github.com/torvalds/linux/tree/master/drivers/mmc/host/sdhci-esdhc-imx.c)

#### DDRC {#ddrc}

The DDRC connects the physical LPDDR4 RAM chip to the blocks inside of the SOC, including CPU and GPU.

- [DDRC Devfreq Driver](https://github.com/torvalds/linux/tree/master/drivers/devfreq/imx8m-ddrc.c)

#### ETH MAC {#eth-mac}

Ethernet in Reform is made from 3 parts (MAC, PHY and the connector with built-in magnetics). The MAC, which is a block in the SoC. In the case of i.MX8M, this is called FEC.

- [FEC Driver](https://github.com/torvalds/linux/tree/master/drivers/net/ethernet/freescale/fec_main.c)

### ETH PHY {#eth-phy}

The PHY part of the Ethernet interface is a chip on the SOM. The default SOM has an Atheros AR8035 PHY, which is driven in Linux by a generic PHY driver.

## USB Hub {#usb-hub}

Reform has a TI TUSB8041 USB Hub chip with four downstream ports, two of which lead to external USB3.0 connectors.

- [Website](https://www.ti.com/product/TUSB8041)
- [Datasheet](https://www.ti.com/lit/ds/symlink/tusb8041.pdf?&ts=1590007407171)

