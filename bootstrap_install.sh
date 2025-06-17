
TO_INSTALL="\
	base-devel \
	bind \
	brightnessctl \
	blueman \
	cargo \
	cmake \
	cyme \
	discord \
	freecad \
	fyi \
	fzf \
	ghostty \
	gimp \
	git \
	github-cli \
	go \
	grim \
	hyprlock \
	hyprpolkitagent \
	hyprland-qtutils \
	htop \
	inkscape \
	keyd \
	lsd \
	man \
	neovim \
	nodejs \
	npm \
	pamixer \
	pandoc \
	powertop \
	python3 \
	python-debugpy \
	rsync \
	sddm \
	slurp \
	swaybg \
	swaync \
	swaylock \
	tailscale \
	tldr \
	tmux \
	ttf-font-awesome \
	unzip \
	vi \
	waybar \
	wget \
	wl-clipboard \
	xxd \
	zip \
	zsh \
"
sudo pacman -S --noconfirm --needed $TO_INSTALL

# Yubikey stuff:
# libfido2 yubikey-manager gnome-keyring

# https://www.nerdfonts.com/font-downloads
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone git@github.com:kpengwin/dotfiles.git
# git clone https://aur.archlinux.com/wezterm-git.git 
