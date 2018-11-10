Thermal
=======

The main source of heat inside Reform is the i.MX6 SoC and its memory chips. Most of the heat goes into the blue passive heatsink that is glued to it. A fan which is mounted to the bottom plate then blows air over the heatsink into the direction of the ports, where it can escape through gaps in the case.

The fan is needed to push hot air out of the case, preventing overheating of the system. Normally, its full power is only needed when the system is under heavy load, for example when the GPU (3D graphics processor) is very active or all 4 cores are busy compiling code. The fan should turn on to full power when the SoC temperature is over 65 degrees celcius.

One of the three fan cables (orange) connects to the PWM1 pin of the i.MX6. The fan's speed can be controlled via pulse width modulation. This is usually the job of the reformd script, which monitors the core temperature and sets the fan to full power when the temperature is over 65 degrees Celcius.

To check the temperature of the system, you can use the command:
  
.. code-block:: shell

   cat /sys/class/thermal/thermal_zone0/temp

The following is an example of commands that reformd uses to change the fan speed (in this instance, to set it to 75%):
   
.. code-block:: shell

   # make the first PWM device available
   echo 0 > /sys/class/pwm/pwmchip1/export
   # define what a full period is
   echo 10000 > /sys/class/pwm/pwmchip1/pwm0/period
   # set how much of this period should be in the "ON" state (75%)
   echo 7500 > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
   # enable the PWM output
   echo 1 > /sys/class/pwm/pwmchip1/pwm0/enable

