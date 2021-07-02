# Commandes ROS

## Configuration IP

```sh
sudo nano /etc/dhcpcd.conf
```

- 1st Raspberry Pi

```sh
interface eth0
static ip_address=192.168.43.10/24
static routers=192.168.43.1
static domain_name_servers=192.168.43.1

interface wlan0
static ip_address=192.168.43.11/24
static routers=192.168.43.1
static domain_name_servers=192.168.43.1
```

- 2nd Raspberry Pi

```sh
interface eth0
static ip_address=192.168.43.20/24
static routers=192.168.43.1
static domain_name_servers=192.168.43.1

interface wlan0
static ip_address=192.168.43.21/24
static routers=192.168.43.1
static domain_name_servers=192.168.43.1
```

## Commandes utiles

Commandes provenant du précédent rapport

```sh
cd robot_ws
```

```sh
catkin_make -j2
```

```sh
echo "source ~/robot_ws/devel/setup.bash" >> ~/.bashrc
```

```sh
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake libpoco-dev libyaml-cpp-dev libtiff-dev libogre-1.9-dev libgl1-mesa-dev python-defusedxml liblz4-dev libgtest-dev
```

```sh
sudo rosdep init
rosdep update
```

```sh
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws
```

```sh
rosinstall_generator desktop --rosdistro noetic --deps --wet-only --tar > noetic-desktop-wet.rosinstall
```

```sh
wstool init src noetic-desktop-wet.rosinstall
```

```sh
wstool merge -t src robot_depedency.rosinstall
wstool update -t src
```

```sh
cd ~/ros_catkin_ws
rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster
```

## ros-noetic on raspbian buster

All commands are from [https://varhowto.com/install-ros-noetic-raspberry-pi-4/#ROS_Noetic_Raspberry_Pi](https://varhowto.com/install-ros-noetic-raspberry-pi-4/#ROS_Noetic_Raspberry_Pi)

```sh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros-noetic.list'

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update

sudo apt install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake

sudo rosdep init

rosdep update

mkdir ~/ros_catkin_ws && cd ~/ros_catkin_ws

rosinstall_generator ros_comm --rosdistro noetic --deps --wet-only --tar > noetic-ros_comm-wet.rosinstall

wstool init src noetic-ros_comm-wet.rosinstall

rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster

sudo dphys-swapfile swapoff

sudoedit /etc/dphys-swapfile

#change value to 1024

sudo dphys-swapfile setup

sudo dphys-swapfile swapon

#free -m

sudo src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/noetic -j1 -DPYTHON_EXECUTABLE=/usr/bin/python3

source /opt/ros/noetic/setup.bash

sudo dphys-swapfile swapoff

sudoedit /etc/dphys-swapfile

#change value 1024 to 100

sudo dphys-swapfile setup

sudo dphys-swapfile swapon
```
