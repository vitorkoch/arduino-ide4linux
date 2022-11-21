# Arduino IDE for Linux
Installation:
```bash
git clone https://github.com/vitorkoch/arduino4linux.git
cd arduino4linux
./install.sh
./brltty-purge.sh # Only if you don't use a braille display
```
Features:
1. Add Arduino IDE icon to /usr/share/icons
2. Install Arduino IDE 2 from official website
3. Add application menu shortcut for Arduino IDE
4. List usb connections
5. Add user to tty and dialout groups
6. Give full permission to Arduino IDE
7. Give full permission to all ports

For rerun troubleshoting: `./install.sh`
