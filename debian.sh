#######cd-rom update error#
#######Open Software & Updates > Other Software tab > Disable CD-ROM repositories > Close > Reload#######

#######Add contrib and non-free repos#######
#######Software & Updates > Debian Software tab > Enable DFSG and non-DFSG compatible software > Close > Reload####

#######installing basic utils and softwares#####
sudo apt install -y gnome-tweaks
sudo apt install -y vim
sudo apt install -y timeshift
sudo apt install -y git
sudo apt install -y tldr

# Install tool for hardware detection
sudo apt install nvidia-detect

# Perform the scan
sudo nvidia-detect

# Install recommended driver. It is nvidia-driver for me. Yours could be different.
sudo apt install nvidia-driver

#Installing AMD drivers
#sudo apt install firmware-linux firmware-linux-nonfree libdrm-amdgpu1 xserver-xorg-video-amdgpu 
#Package firmware-linux is not available, but is referred to by another package.
#This may mean that the package is missing, has been obsoleted, or
#is only available from another source
#However the following packages replace it:
#  firmware-misc-nonfree

#E: Package 'firmware-linux' has no installation candidate
#E: Package 'firmware-linux-nonfree' has no installation candidate


#Installing Vulcan(helpful if you play games)
sudo apt install -y mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers

#Installing microcode
sudo apt install -y amd64-microcode

#Install Restricted-extras
sudo apt install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

#Installing MS Fonts
sudo apt install -y fonts-crosextra-carlito fonts-crosextra-caladea

#Installing and configuring firewall
sudo apt install -y ufw
sudo ufw enable

# tlp (power management tool)
sudo apt install -y tlp

# Flatpak
sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#IF can't see flatpak in gnome-software after reboot,
#Try these commands:
#killall gnome-software
#rm -rf ~/.cache/gnome-software
#sudo apt-get --reinstall install -y gnome-software-plugin-flatpak
#sudo flatpak update



