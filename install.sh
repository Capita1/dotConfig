#!/bin/bash
BLU='\033[0;34m'
RED='\033[0;31m'
YEL='\033[0;33m'
NC='\033[0m' 
if [ "$(pwd)" = "/home/$(whoami)/.config/dotConfig" ]; then
	echo -e "${BLU}\n░░░░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░"
	echo -e "${BLU}░░░██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░"
	echo -e "${BlU}░░░██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░"
	echo -e "${BLU}░░░██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗"
	echo -e "${BLU}██╗╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝"
	echo -e "${BLU}╚═╝░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░"
else
	cd ~/.config/
	git clone https://github.com/Capita1/dotConfig.git
	cd dotConfig/
	sh install.sh
fi

echo -e "${YEL}\nAtualizando...\n${NC}"
sudo pacman -Syu --needed base-devel 

echo "${YEL}Links${NC}"	
cp -r config/hypr/ ../
ln -rsf config/* ../
ln -rsf config/hypr/temas/Simples/* ~/.config/
sudo rm ~/.bashrc ; sudo ln -rsf bashrc ~/.bashrc
sudo rm ~/.profile ; sudo ln -rsf profile ~/.profile
sudo rm /etc/hosts ; sudo ln -rsf hosts /etc/


echo -e "${YEL}\nApps\n${NC}"
#Interface
sudo pacman -S --needed hyprland swaync waybar wofi wpaperd nwg-look polkit-kde-agent xdg-desktop-portal-gtk xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-hyprland gtk-engine-murrine
#Apps
sudo pacman -S --needed kitty pavucontrol blueman thunar thunar-media-tags-plugin thunar-shares-plugin thunar-volman ffmpegthumbnailer tumbler gvfs gparted grim slurp
#Texto
sudo pacman -S --needed libreoffice-still neovide neovim mousepad zathura zathura-pdf-mupdf 
#Midia
sudo pacman -S --needed feh vlc mpv playerctl
#CLI
sudo pacman -S --needed neofetch btop awk less libnotify yt-dlp ffmpeg cliphist wl-clipboard tealdeer unzip github-cli flatpak
#Fontes
sudo pacman -S --needed ttf-nerd-fonts-symbols-mono ttf-terminus-nerd adobe-source-code-pro-fonts
