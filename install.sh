#! /bin/bash
INSTALLATION_FOLDER="${HOME}/arduino-ide"
sudo echo "Sudo Mode"

# Create the installation folder e enter in it
mkdir $INSTALLATION_FOLDER || echo "Installation folder already created"
cd $INSTALLATION_FOLDER

echo "Installing..."
if [ -d "arduino-ide/" ]; then
  echo "Already installed, if want to reinstall remove arduino-ide from your home folder"
else
  wget -O arduino.zip https://downloads.arduino.cc/arduino-ide/arduino-ide_2.2.0_Linux_64bit.zip
  unzip arduino-ide-download.zip
  mv arduino-ide_2.2.0_Linux_64bit arduino-ide
fi

# Add the icon to system wide
sudo cp arduino-ide.png /usr/share/icons

# Add Arduino IDE to application menu
cp arduino-ide.desktop $HOME/.local/share/applications/

echo "Troubleshoting..."
echo "Showing usb connections"
lsusb
echo "Adding user ${USER} to tty and dialout groups"
sudo adduser $USER tty
sudo usermod -a -G tty $USER
sudo adduser $USER dialout
sudo usermod -a -G dialout $USER
echo "Giving Arduino IDE full permission"
sudo chmod +x $HOME/arduino-ide/arduino-ide/arduino-ide
echo "If you don't use a braille display run 'brltty-purge.sh'"
