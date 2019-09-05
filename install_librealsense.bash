sudo apt upgrade 
sudo apt update 

sudo apt-get install --install-recommends 
linux-generic-lts-xenial xserver-xorg-core-lts-xenial 
xserver-xorg-lts-xenial xserver-xorg-video-all-lts-xenial 
xserver-xorg-input-all-lts-xenial libwayland-egl1-mesa-lts-xenial

git clone https://github.com/IntelRealSense/librealsense.git

cd librealsense/

sudo apt-get install git libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev

#if we are on x64 or x86 based processor
./scripts/patch-realsense-ubuntu-lts.sh
#else for embede system
./scripts/patch-realsense-ubuntu-xenial-joule.sh

cmake ../ -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_EXAMPLES=true\
        -DBUILD_GRAPHICAL_EXAMPLES=false .

sudo make uninstall && make clean && make && sudo make install