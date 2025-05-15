
TO_INSTALL="\
	brightnessctl \
	cargo \
	cmake \
	fyi \
	fzf \
	ghostty \
	git \
	hyprlock \
	htop \
	lsd \
	man \
	neovim \
	nodejs \
	npm \
	pamixer \
	powertop \
	rofi-wayland \
	sddm \
	swaybg \
	swaync \
	swaylock \
	tailscale \
	tldr \
	tmux \
	ttf-font-awesome \
	unzip \
	waybar \
	wl-clipboard \
	xxd \
	zip \
	zsh \
"
sudo pacman -S --noconfirm --needed $TO_INSTALL

# https://www.nerdfonts.com/font-downloads
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone git@github.com:kpengwin/dotfiles.git
# git clone https://aur.archlinux.com/wezterm-git.git 
