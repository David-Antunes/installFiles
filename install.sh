#!/bin/sh

### Workspace installation file for pop!_OS


apt install -y \
	vim \
	htop \
	kolourpaint \
	dconf-editor \
	gnome-tweaks \
	nodejs \


flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub -y \
	org.audacityteam.Audacity \
	org.videolan.VLC \
	com.discordapp.Discord \
	com.visualstudio.code \
	com.obsproject.Studio \
	org.chromium.Chromium \
	com.axosoft.GitKraken \
	com.spotify.Client \
	com.dropbox.Client \
	org.gimp.GIMP \
	org.flameshot.Flameshot \
	com.uploadedlobster.peek \
	com.jetbrains.IntelliJ-IDEA-Ultimate \
	com.jetbrains.PyCharm-Professional \
	com.jetbrains.WebStorm 


# Adds the ability to change workspaces through Super+Num
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1  "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2  "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3  "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4  "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5  "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6  "['<Super>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7  "['<Super>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8  "['<Super>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9  "['<Super>9']"


# Allows to send a window to the desired workspace using Super+Shift+Num
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1  "['<Super><Shift>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2  "['<Super><Shift>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3  "['<Super><Shift>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4  "['<Super><Shift>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5  "['<Super><Shift>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6  "['<Super><Shift>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7  "['<Super><Shift>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8  "['<Super><Shift>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9  "['<Super><Shift>9']"

#### Remove older versions of docker

apt-get remove -y docker docker-engine docker.io containerd runc


#### Install docker repository

apt-get update

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

### Adding key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -


add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


### Installing Docker Engine


apt-get install -y docker-ce docker-ce-cli containerd.io

### Sound fix 

### TODO Make it automatic when waking up the system
hda-verb /dev/snd/hwC0D0 0x20 SET_COEF_INDEX 0x67
hda-verb /dev/snd/hwC0D0 0x20 SET_PROC_COEF 0x3000

echo ''
echo ''
echo ''

echo 'INSTALL GNOME EXTENSIONS'

echo 'INSTALL CPU POWER MANAGER'

echo 'INSTALL POMODORO'


### INSTALL GNOME EXTENSIONS
### INSTALL CPU POWER MANAGER
### INSTALL POMODORO
