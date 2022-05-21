# keyboard remix by milestogo

This keyboard design is for educational purposes: for me to learn through experimenting, or for for you to educate me. 
Little remains of MNT's tested design. I have not tested. It may have dangerous or time-wasting errors. 


![Front of PCB image](https://github.com/milestogo/reform/blob/ergo1-itsybitsy/reform2-keyboard-pcb/reform2-keyboard-ergo-front.png?raw=true "Front of PCB")

Changes from MNT reform
- Ergonomic key layout. 
- Removed backlight
- Added partial RGB backlighting. Keys ESC,~,1,2, F, Thumb keys, J, 9,0,-,= have backlights. This is enough to show battery voltage or where to put your hand in the dark. There are jumpers to bypass the top row LEDs, or add separate LED strips. This uses SK Mini-E rgb lights. Since they are bottom mount and optional, the power caps for them are also bottom & optional. 
- Added optional Kailh sockets for switches without RGB backlight. These sockets are cheaper than switches, so I like them in protototypes. there probably isn't thermal or short circuit clearance above the MNT motherboard, so use the direct direct solder holes.
- Removed surface mount Atmega32u4 and related voltage chips (cost and chip shortages). Instead it uses the 3 volt Adafruit itsy bitsy. https://learn.adafruit.com/introducting-itsy-bitsy-32u4/pinouts
you must hack a USB cable to connect the MCU  to the keyboard (see screenprint for "airwire"). 
- Optional power off switch/jumper that can completly remove power to the keyboard.
- Lots of break out pins, so that it should be possible to use the PCB with other MCUs.  
- Desktop option for through hole OLED modules. Available from online retailers





These changes are made available under the MIT License: 
Copyright © 2022 milestogo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
