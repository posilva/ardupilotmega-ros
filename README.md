ardupilotmega-ros
=================

ROS packages to connect to ardupilotmega using mavlink protocol

This package was generated using this mavlink to ROS generator: https://github.com/posilva/mav2rosgenerator

# Installation

If you are in a deb based distro you can run this script (https://bitbucket.org/pmosilva/rosfs) to install ROS (comm) from source in custom folder (I will improve this script soon to support other distros or compile from source all dependencies ;) )

1. Clone  this repository 
2. Copy the packages into a ROS workspace 'src' folder
3. Run catkin_make inside workspace
4. Launch a ROS core 
5. Connect Radio Serial device to the PC
6. Edit mavlink_device/scripts/mavlink_device_node.py and configure your serial port settings (device, baudrate)
7. Run mavlink_device_node.py node ( you must source your setup.bash to load ROS environment variables)
8. Execute "rosrun mavlink_ardupilotmega mavlink_ardupilotmega_node" 
9. Open a shell and execute "rostopic echo /from_mav_heartbeat" ( you must source your setup.bash to load ROS environment variables)

# New Installation mode
This is a automated and integrated installation (for deb distros: tested on debian stable/testinf and ubuntu 14.04) of a minimal ROS environment with this package installed 

1. git clone https://bitbucket.org/pmosilva/rosfs
2. cd rosfs
3. ./ros_install.sh $PWD/ardupilotmega
4. source $PWD/ardupilotmega/sysroot/opt/ros/hydro/setup.bash
5. launch master in background: roscore &
6. rosrun mavlink_ardupilotmega mavlink_ardupilotmega_node
7. In other shell source the same setup.bash file and execute: rostopic list

At this point you will see all the topics to handle mavlink messages for ardupilotmega
