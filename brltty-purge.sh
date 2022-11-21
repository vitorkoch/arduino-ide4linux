#! /bin/bash
echo "Removing buggy daemon (brltty)"
systemctl stop brltty-udev.service
sudo systemctl mask brltty-udev.service
systemctl stop brltty.service
systemctl disable brltty.service
sudo apt remove brltty
sudo dnf remove brltty
