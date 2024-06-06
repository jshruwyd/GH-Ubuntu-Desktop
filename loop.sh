#!/bin/bash
echo Fixing and running vnc with web access

for file in $(find /usr -type f -iname "*login1*"); do rm -rf $file 

done

websockify --web /usr/share/novnc/ --wrap-mode=ignore 6080 localhost:5900 
echo "Starting VNC server..."
vncserver :1 -geometry 2560x1440 -depth 24 -localhost -nolisten tcp -rfbport 5900
echo "Done! Port 6080 and 5900 should now be forwarded. Simply open https://localhost:6080 to access the NoVNC client."
             

# Sonsuz döngü
while true
do
    echo Running i guess
    sleep 100
done
