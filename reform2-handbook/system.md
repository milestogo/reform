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

#### Cortex-A53 {#cortex-a53}

The four main 64-bit ARM cores of the default SOC of Reform.

- Reference Manual: [PDF](http://docs-api-peg.northeurope.cloudapp.azure.com/assets/ddi0500/g/DDI0500G_cortex_a53_trm.pdf)

#### Cortex-M4F {#cortex-m4f}

The additional 32-bit ARM CPU core of the default SOC of Reform.

- Reference Manual: [PDF](http://infocenter.arm.com/help/topic/com.arm.doc.ddi0439b/DDI0439B_cortex_m4_r0p0_trm.pdf)

#### Verisilicon Vivante GC7000L GPU {#gpu}

The GPU in the i.MX8M SOM. Official documentation is not public, but most of its functionality has been reverse engineered by the etnaviv project.

- TODO: Spec/Capabilities
- Documentation: See main i.MX8M Manual for integration in SOC
- [Driver (Kernel Part)]( https://github.com/torvalds/linux/tree/master/drivers/gpu/drm/etnaviv)
- [Driver (Mesa Part)](https://cgit.freedesktop.org/mesa/mesa/tree/src/gallium/drivers/etnaviv)

#### MIPI DSI {#mipi-dsi}

i.MX8M has a MIPI DSI block by Northwest Logic and a DSI PHY by Mixel. Both have open source drivers in the Linux kernel. Reform accepts MIPI DSI signal on the motherboard header J24. The DSI to eDP Converter converts the signal to eDP to drive the display panel.

- TODO: kernel sources

#### SAI {#sai}

i.MX8M has multiple SAI ports for digital audio. 

- TODO: kernel sources

#### I2C {#i2c}

- TODO: kernel sources

#### SPI {#spi}

- TODO: kernel sources

#### PWM {#pwm}

- TODO: kernel sources

#### PCIe {#pcie}

- TODO: kernel sources

#### UART {#uart}

- TODO: kernel sources

#### HDMI {#hdmi}

- TODO: kernel sources

#### USB3 {#usb3}

- TODO: kernel sources

#### ETH MAC {#eth-mac}

- TODO: kernel sources

#### MMC/SD {#mmc}

- TODO: kernel sources

#### DDRC {#ddrc}

The DDRC connects the physical LPDDR4 RAM chip to the blocks inside of the SOC, including CPU and GPU.

### ETH PHY {#eth-phy}

The PHY part of the Ethernet interface is on the SOM. It is an Atheros AR8035 chip.

- TODO: kernel sources

## USB Hub {#usb-hub}

Reform has a TI TUSB8041 USB Hub chip.

- [Website](https://www.ti.com/product/TUSB8041)
- [Datasheet](https://www.ti.com/lit/ds/symlink/tusb8041.pdf?&ts=1590007407171)

