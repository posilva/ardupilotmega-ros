ardupilotmega-ros
=================

ROS packages to connect to ardupilotmega using mavlink protocol

This package was generated using this mavlink to ROS generator: https://github.com/posilva/mav2rosgenerator

# Installation

If you are in a deb based distro you can run this script (https://bitbucket.org/pmosilva/rosfs) to install ROS (comm) from source in custom folder (I will improve this script soon to support other distros or compile from source all dependencies ;) )

1. Copy this packages to a ROS workspace 'src' folder
2. Run catkin_make inside workspace
3. Launch a ROS core 
4. Connect Radio Serial device to the PC
5. Edit mavlink_device/scripts/mavlink_device_node.py and configure your serial port settings (device, baudrate)
6. Run mavlink_device_node.py node ( you must source your setup.bash to load ROS environment variables)
7. Execute "rosrun mavlink_ardupilotmega mavlink_ardupilotmega" 
8. Open a shell and execute "rostopic echo /from_mav_heartbeat" ( you must source your setup.bash to load ROS environment variables)
