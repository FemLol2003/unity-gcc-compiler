# installing everything for building on Linux
sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt-get install mingw-w64 -y
sudo apt-get install gcc-mingw-w64-i686 -y
sudo apt-get install gcc-mingw-w64-x86-64 -y

sudo apt-get install gcc-multilib -y #g++-multilib -y
# sudo apt-get install binutils-arm-linux-gnueabi -y
sudo apt-get install gcc-arm-linux-gnueabi -y
sudo apt-get install gcc-12-aarch64-linux-gnu -y