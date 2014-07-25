#!/usr/bin/env python
#===============================================================================
# This script depends on mavlink_ardupilotmega package
# available at https://github.com/posilva/ardupilotmega-ros
#===============================================================================

import rospy
import serial
from mavlink_ardupilotmega.msg import MAV_RAW_DATA

#===============================================================================
#  Edit the serial port parameters to adapt to your device (3DR radio receiver)
#===============================================================================
ser = serial.Serial('/dev/ttyUSB0', 57600, timeout=1)

#===============================================================================
# This is a callback to receive raw data to send to AP
#===============================================================================
def to_mav_raw_callback(message):
    rospy.loginfo("Write to mav "+ str(len(message.data)) + " bytes")
    ser.write(message.data)
    
#===============================================================================
# ROS Node to receive data from ROS 
#===============================================================================
def node():
    rospy.init_node('mavlink_device_node', anonymous=True)
    
    pub = rospy.Publisher('/from_mav_mav_raw_data', MAV_RAW_DATA, queue_size=10)
    rospy.Subscriber("/to_mav_mav_raw_data", MAV_RAW_DATA, to_mav_raw_callback,queue_size=10)
    
    r = rospy.Rate(100) # 100hz
    
    m = MAV_RAW_DATA()  # Create a raw message
    m.channel=0         # default channel is 0
    
    while not rospy.is_shutdown():
      # Read data from serial port  
      m.data = ser.read(255) 
      # Forward data to ardupilotmega-ros driver
      pub.publish(m)
      r.sleep()
      
if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException: pass
