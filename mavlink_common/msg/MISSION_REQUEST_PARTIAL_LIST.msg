# Automatically Generated in 2014-08-12 13:24:39.907713
# MESSAGE: MISSION_REQUEST_PARTIAL_LIST
# Description:Request a partial list of mission items from the system/component. http://qgroundcontrol.org/mavlink/waypoint_protocol. If start and end index are the same, just send one waypoint.
uint8 ID = 37
uint8 sysid
uint8 compid
uint8 target_system
uint8 target_component
int16 start_index
int16 end_index
