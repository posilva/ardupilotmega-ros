# Automatically Generated in 2014-08-12 13:24:39.910991
# MESSAGE: NAMED_VALUE_FLOAT
# Description:Send a key-value pair as float. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output.
uint8 ID = 251
uint8 sysid
uint8 compid
uint32 time_boot_ms
char[10] name
float32 value
