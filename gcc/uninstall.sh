sudo apt-get remove mingw-w64 -y
sudo apt-get remove gcc-mingw-w64-i686 -y
sudo apt-get remove gcc-mingw-w64-x86-64 -y

sudo apt-get remove mingw-w64-i686-dev -y
sudo apt-get remove mingw-w64-x86-64-dev -y

sudo apt-get remove gcc-multilib -y
sudo apt-get remove g++-multilib -y
sudo apt-get remove binutils-arm-linux-gnueabi -y
sudo apt-get remove gcc-arm-linux-gnueabi -y
sudo apt-get remove gcc-12-aarch64-linux-gnu -y

sudo apt-get autoremove
sudo apt-get autoclean