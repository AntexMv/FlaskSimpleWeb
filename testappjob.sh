if curl http://192.168.250.15:12345/ | grep "Version 1.3" ; then 
 exit 0
elese
 exit 1
fi
