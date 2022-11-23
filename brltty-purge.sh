#! /bin/bash
echo "Removing buggy daemon (brltty)"
sudo systemctl stop brltty-udev.service
sudo systemctl mask brltty-udev.service
sudo systemctl stop brltty.service
sudo systemctl disable brltty.service
sudo apt remove brltty
sudo dnf remove brltty
