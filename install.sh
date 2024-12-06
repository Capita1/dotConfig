#!/bin/bash
echo "Basico"
sudo pacman -Syu #atualizar
sudo pacman -S --needed base-devel flatpak github-cli

if [ "$(pwd)" = "/home/$(whoami)/.config/dotConfig" ]; then
	echo "Links"	
	cp -r config/hypr/ ../
	ln -rsf config/* ../
	ln -rsf config/hypr/temas/Simples/* ~/.config/
else
	cd ~/.config/dotConfig 
fi

echo "Configs"	
sudo rm ~/.bashrc ; sudo ln -rsf bashrc ~/.bashrc
sudo rm ~/.profile ; sudo ln -rsf profile ~/.profile
sudo rm /etc/hosts ; sudo ln -rsf hosts /etc/

######
#APPS#
######

echo "Interface"			
sudo pacman -S --needed hyprland swaync waybar wofi wpaperd nwg-look polkit-kde-agent xdg-desktop-portal-gtk xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-hyprland
echo "Apps"
sudo pacman -S --needed kitty pavucontrol blueman thunar thunar-media-tags-plugin thunar-shares-plugin thunar-volman ffmpegthumbnailer tumbler gvfs gparted
echo "Texto"
sudo pacman -S --needed libreoffice-still neovide neovim mousepad zathura zathura-pdf-mupdf 
echo "Midia"
sudo pacman -S --needed feh vlc mpv playerctl
echo "CLI apps"
sudo pacman -S --needed neofetch btop awk less libnotify yt-dlp ffmpeg cliphist wl-clipboard tealdeer unzip
echo "Fontes"
sudo pacman -S --needed ttf-nerd-fonts-symbols-mono ttf-terminus-nerd adobe-source-code-pro-fonts