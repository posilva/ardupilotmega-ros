# Automatically Generated in 2014-07-26 21:31:17.862138
# MESSAGE: NAMED_VALUE_INT
# Description:Send a key-value pair as integer. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output.
uint8 ID = 252
uint8 sysid
uint8 compid
uint32 time_boot_ms
char[10] name
int32 value
