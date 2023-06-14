PKG_MANAGER = sudo pacman -S --needed --noconfirm
DEPENDENCIES = \
	       feh

AUR_MANAGER = yay -S --aur --needed --noconfirm
AUR_DEPENDENCIES = \
		   swww

install: dependencies

dependencies:
	$(PKG_MANAGER) $(DEPENDENCIES)
	$(AUR_MANAGER) $(AUR_DEPENDENCIES)
