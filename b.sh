sudo apt update -y
sudo apt install yaru-theme-gtk yaru-theme-icon -y
sudo apt install websockify novnc gnome-shell gnome-terminal gnome-tweaks gnome-shell-extensions gnome-shell-extension-ubuntu-dock nautilus nano gedit dbus-x11 tigervnc-standalone-server -y
mkdir ~/root/.vnc
wget -O ~/root/.vnc/passwd https://github.com/Efebey2903/GH-Ubuntu-Desktop/raw/main/vncpasswd
wget -O ~/root/.vnc/xstartup https://github.com/Efebey2903/GH-Ubuntu-Desktop/raw/main/xstartup
chmod +x root/.vnc/xstartup
chmod 666 /root/.vnc/xstartup
vncserver :1 -geometry 1920x1080 -depth 24 -rfbport 5900 -SecurityTypes None
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz ; tar -xf ngrok-v3-stable-linux-amd64.tgz
./ngrok config add-authtoken 2eaehnkTjyL4OmHHKgaCsGmTBEU_6QCyvFZNhdNgHQgNbNQ1g
./ngrok tcp --region ap 5900
