sudo apt update -y
sudo apt install yaru-theme-gtk yaru-theme-icon -y
sudo apt install websockify novnc gnome-shell gnome-terminal gnome-tweaks gnome-shell-extensions gnome-shell-extension-ubuntu-dock nautilus nano gedit dbus-x11 tigervnc-standalone-server -y
mkdir ~/.vnc
wget -O ~/.vnc/passwd https://github.com/Efebey2903/GH-Ubuntu-Desktop/raw/main/vncpasswd
wget -O ~/.vnc/xstartup https://github.com/Efebey2903/GH-Ubuntu-Desktop/raw/main/xstartup
chmod +x /home/codespace/.vnc/xstartup
chmod 666 /home/codespace/.vnc/xstartup
wget -O loop.sh https://github.com/jshruwyd/GH-Ubuntu-Desktop/raw/main/loop.sh
sh loop.sh
