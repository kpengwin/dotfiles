if [ -d "$HOME/Library/Python/2.7/bin" ]; then
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi
export POWERLINE_COMMAND=powerline
export POWERLINE_CONFIG_COMMAND=powerline-config
powerline-daemon -q

. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh


alias laptop='bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)'

export PATH="$HOME/.bin:$PATH"

export PATH="/usr/local/bin:$PATH"

eval "$(hub alias -s)"

source /usr/local/share/chruby/chruby.sh

source /usr/local/share/chruby/auto.sh

chruby ruby-2.4.0


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

figlet "applocker exclusions"
echo
fortune
echo
export CLICOLOR=1;

export PATH=/Users/kbruce7/.gem/ruby/2.4.0/bin:/Users/kbruce7/.rubies/ruby-2.4.0/lib/ruby/gems/2.4.0/bin:/Users/kbruce7/.rubies/ruby-2.4.0/bin:/usr/local/bin:/Users/kbruce7/.bin:/Users/kbruce7/Library/Python/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/munki:/Applications/Wireshark.app/Contents/MacOS:/Users/kbruce7/.vimpkg/bin
