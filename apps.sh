#!/bin/bash
echo "Basico"
sudo pacman -Syu #atualizar
sudo pacman -S --needed git base-devel flatpak

#BAIXAR E INSTALAR PARU
if ! [ -x "$(command -v paru)" ]; then
	echo -e 'paru não instalado\nInstalando...' >&2
	git clone https://aur.archlinux.org/paru-bin.git 
	cd paru-bin
	makepkg -si
else
	echo 'paru já instalado.' >&2
fi


echo "Interface"			
sudo pacman -S --needed hyprland swaync waybar wofi wpaperd
echo "Apps"
sudo pacman -S --needed kitty pavucontrol blueman thunar thunar-media-tags-plugin thunar-shares-plugin thunar-volman ffmpegthumbnailer tumbler
echo "Texto"			
sudo pacman -S --needed libreoffice-still neovide neovim mousepad zathura zathura-pdf-mupdf 
echo "Midia"
sudo pacman -S --needed feh vlc mpv playerctl
echo "CLI apps"
sudo pacman -S --needed neofetch btop awk less libnotify yt-dlp ffmpeg cliphist wl-clipboard
echo "AUR apps"
paru -S librewolf-bin #navegador
paru -S waydroid #android container

flatpak install org.ferdium.Ferdium #client de apps de mensagem
flatpak install org.onionshare.OnionShare #serviços onion
flatpak install	com.stremio.Stremio #stremio
flatpak install	io.github.seadve.Mousai #reconhecedor de musica
flatpak install io.gitlab.adhami3310.Converter #conversor de imagens
flatpak install fr.handbrake.ghb #conversor de videos