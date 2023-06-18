PKG_MANAGER = sudo pacman -S --needed --noconfirm
DEPENDENCIES = \
	       arch-wiki-docs \
	       dmenu \
	       dunst \
	       feh \
	       ffmpegthumbnailer \
	       figlet \
	       fzf \
	       libnotify \
	       lolcat \
	       mpc \
	       neofetch \
	       newsboat \
	       pulsemixer \
	       sudo \
	       viu \
	       wireplumber \
	       wofi

AUR_MANAGER = yay -S --aur --needed --noconfirm
AUR_DEPENDENCIES = \
		   swww

install: dependencies
	mkdir -p ~/.cache/proc

dependencies:
	$(PKG_MANAGER) $(DEPENDENCIES)
	$(AUR_MANAGER) $(AUR_DEPENDENCIES)
