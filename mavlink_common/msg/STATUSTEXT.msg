# Automatically Generated in 2014-08-12 13:24:39.911102
# MESSAGE: STATUSTEXT
# Description:Status text message. These messages are printed in yellow in the COMM console of QGroundControl. WARNING: They consume quite some bandwidth, so use only for important status and error messages. If implemented wisely, these messages are buffered on the MCU and sent only at a limited rate (e.g. 10 Hz).
uint8 ID = 253
uint8 sysid
uint8 compid
uint8 severity
char[50] text
