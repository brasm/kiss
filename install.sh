#!/bin/bash
pacman -Syu mpd --noconfirm
install -m 755 mediamount /usr/local/bin/
install -m 644 90-mediamount.rules /etc/udev/rules.d/
install -m 644 mpd.conf  /etc
install -m 644 hostname  /etc
systemctl enable mpd
