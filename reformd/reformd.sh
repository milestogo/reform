#!/bin/bash
#
# MNT Reform 0.5.0 Daemon for Battery, and Sleep/Wake Control
# Copyright 2018,2019 MNT Research GmbH, Berlin
# SPDX-License-Identifier: GPL-3.0-or-later
#

#set -x

set_fan_speed () {
    set +e; echo 0 > /sys/class/pwm/pwmchip1/export 2>/dev/null ; set -e
    echo 10000 > /sys/class/pwm/pwmchip1/pwm0/period
    echo "$1" > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
    echo 1 > /sys/class/pwm/pwmchip1/pwm0/enable
}

function get_soc_temperature {
    read soc_temperature < /sys/class/thermal/thermal_zone0/temp
}

function regulate_fan {
    get_soc_temperature

    if [ "$soc_temperature" -lt 62000 ]
    then
        set_fan_speed 2900
    fi

    if [ "$soc_temperature" -gt 70000 ]
    then
        set_fan_speed 10000
    fi
}

function setup_serial {
    # 2400 baud 8N1, raw
    # cargoculted by exporting parameters with stty after using screen
    stty 406:0:8bb:8a30:3:1c:7f:15:4:2:64:0:11:13:1a:0:12:f:17:16:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0 -F /dev/ttymxc1
}

function disable_echo {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "0e\r" >&99 
    exec 99>&-
    set +e; timeout 2 head /dev/ttymxc1; set -e
}

function enable_wake_events {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "1k\r" >&99 
    exec 99>&-
    set +e; timeout 2 head /dev/ttymxc1; set -e
}

function get_bat_capacity {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "c\r" >&99
    IFS='\r\n'
    read -r -t 1 bat_capacity <&99
    bat_capacity=${bat_capacity%$'\r'}
    exec 99>&-
}

function get_bat_volts {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "v\r" >&99
    IFS='\r\n'
    read -r -t 1 bat_volts <&99
    bat_volts=${bat_volts%$'\r'}
    exec 99>&-
}

function get_bat_amps {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "a\r" >&99
    IFS='\r\n'
    read -r -t 1 bat_amps <&99
    bat_amps=${bat_amps%$'\r'}
    exec 99>&-
}

function get_lid_state {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "l\r" >&99
    IFS='\r\n'
    read -r -t 1 lid_state <&99
    lid_state=${lid_state%$'\r'}
    
    exec 99>&-
}

function reset_bat_capacity {
    setup_serial
    exec 99<>/dev/ttymxc1
    :<&99
    printf "9999c\r" >&99
    exec 99>&-
}

function system_suspend {
    setup_serial
    
    # wake up on serial port 2 traffic
    echo enabled > /sys/devices/soc0/soc/2100000.aips-bus/21e8000.serial/tty/ttymxc1/power/wakeup
    
    # drain serial port
    set +e; timeout 1 head /dev/ttymxc1; set -e

    # stop the fan
    set +e
    echo 0 > /sys/class/pwm/pwmchip1/pwm0/enable
    set -e

    # zzZzzZ
    echo -n mem > /sys/power/state
    
    exit
}

function main {
    # 1. if the system is getting too hot, we want to cool it with the fan
    regulate_fan

    # 2. log all stats, especially battery stats, to a TSV file
    # so it can be graphed and we can estimate remaining running time
    # TODO actually append to log and rotate it out
    # TODO interval?
    timestamp=$(date +%s)
    get_bat_volts
    get_bat_amps
    get_bat_capacity
    get_lid_state

    # clamp bat capacity at 100%
    if (( $bat_capacity >= 10000 ))
    then
        reset_bat_capacity
    fi

    printf '%d\t%d\t%d\t%d\t%d\n' "$timestamp" "$bat_capacity" "$bat_volts" "$bat_amps" "$lid_state"
    printf '%d,%d,%d,%d,%d\n' "$timestamp" "$bat_capacity" "$bat_volts" "$bat_amps" "$lid_state" > /var/log/reformd

    # 3. if the lid is closed, we want to suspend the system
    # important: this works only if the kernel option no_console_suspend=1 is set!
    # also, requires kernel patch when using PCIe cards: https://github.com/sakaki-/novena-kernel-patches/blob/master/0017-pci-fix-suspend-on-i.MX6.patch
    # (workaround for erratum "PCIe does not support L2 Power Down")
    #if [ "$lid_state" ] && [ "$lid_state" -eq "1" ]
    #then
    #    system_suspend
    #    exit
    #fi
}

disable_echo
enable_wake_events

# enable the fan in case we killed it last time
set +e
echo 1 > /sys/class/pwm/pwmchip1/pwm0/enable
set -e

while true; do
    main
    sleep 1
done

