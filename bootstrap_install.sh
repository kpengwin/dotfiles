
TO_INSTALL="\
	brightnessctl \
	cargo \
	cmake \
	dunst \
	firefox \
	fyi \
	ghostty \
	git \
	htop \
	man \
	neovim \
	nodejs \
	npm \
	pamixer \
	rofi-wayland \
	sddm \
	swaybg \
	swaylock \
	tailscale \
	tldr \
	tmux \
	ttf-font-awesome \
	unzip \
	waybar \
	wl-clipboard \
	zip \
	zsh \
"
sudo pacman -S --noconfirm --needed $TO_INSTALL

# https://www.nerdfonts.com/font-downloads
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone git@github.com:kpengwin/dotfiles.git
# git clone https://aur.archlinux.com/wezterm-git.git 
