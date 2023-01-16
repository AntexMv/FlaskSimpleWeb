if curl http://192.168.250.15:12345/ | grep "1.5" 
then 
 exit 0
elese
 exit 1
fi
