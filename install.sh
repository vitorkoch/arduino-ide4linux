INSTALLATION_FOLDER="${HOME}/arduino-ide"
sudo echo "Sudo Mode"

# Add the icon to system wide
sudo cp arduino-ide.png /usr/share/icons

# Add Arduino IDE to application menu
cp arduino-ide.desktop $HOME/.local/share/applications/

# Create the installation folder e enter in it
mkdir $INSTALLATION_FOLDER || echo "Installation folder already created"
cd $INSTALLATION_FOLDER

echo "Installing..."
if [ -d "arduino-ide/" ]; then
  echo "Already installed, if want to reinstall remove arduino-ide from your home folder"
else
  wget -O arduino.zip https://github.com/arduino/arduino-ide/releases/download/2.0.2/arduino-ide_2.0.2_Linux_64bit.zip
  unzip arduino.zip
  mv arduino-ide_2.0.2_Linux_64bit arduino-ide
fi

echo "Troubleshoting..."
echo "Adding user ${USER} to tty and dialout groups"
sudo usermod -a -G tty $USER
sudo usermod -a -G dialout $USER
