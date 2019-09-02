#HOW TO INSTALL OPENCV

##In linux ubuntu.

frist you need to update packages 
```
sudo apt-get update
sudo apt-get upgrade
```
after then you install os libraries 
```
Remove any previous installations of x264</h3>
sudo apt-get remove x264 libx264-dev
 
We will Install dependencies now
 
sudo apt-get install build-essential checkinstall cmake pkg-config yasm
sudo apt-get install git gfortran
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
 
# If you are using Ubuntu 14.04
sudo apt-get install libtiff4-dev
# If you are using Ubuntu 16.04
sudo apt-get install libtiff5-dev
 
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt-get install libxine2-dev libv4l-dev
sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev
sudo apt-get install libvorbis-dev libxvidcore-dev
sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt-get install x264 v4l-utils
 
# Optional dependencies
sudo apt-get install libprotobuf-dev protobuf-compiler
sudo apt-get install libgoogle-glog-dev libgflags-dev
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
```
```
Download opencv from Github
```
git clone https://github.com/opencv/opencv.git
cd opencv 
git checkout 3.3.1 
cd ..
```
Download opencv_contrib from Github
```
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 3.3.1
cd ..
```
Create a build directory
```
cd opencv
mkdir build
cd build
```

Run CMake
```c
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D WITH_TBB=ON \
      -D WITH_V4L=ON \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ..
```
Compile and Install
```
# substitute 4 by output of nproc
make -j4
sudo make install
ldconfig
```
**compile your first program**

	g++ -std=c++11 removeRedEyes.cpp `pkg-config --libs --cflags opencv` -o removeRedEyes
	
##Error 
if you get error in instaling with include eigen3, install then
```udo apt install libeigen3-dev
```
 if it is already installed you can change 
```#include <eigen3/...> by #include #include <eigen3/Eigen/Dense>```


