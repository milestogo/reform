#!/bin/bash

set -x

mkdir -p /etc/reform
cp reformd.sh /etc/reform/
cp status-bar.sh /etc/reform/
cp reformd.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable reformd.service
systemctl start reformd.service

cat << EOF

To integrate reformd into i3bar, do the following steps:

- Install py3status (sudo apt install py3status)
- Adapt your i3 config to use py3status and /etc/reform/status-bar.sh:

bar {
  status_command py3status -c ~/.config/i3status.conf
}

- Copy the i3status.conf from this directory to ~/.config/i3status.conf
- Take a look at that file and adapt to your needs
- Reload i3 (normally Mod+Shift+R)

To follow reformd status output, use:
- journalctl -fu reformd.service

EOF

