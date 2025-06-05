export LANG=en_US.UTF-8

autoload -U colors && colors

alias ls='eza'
alias cat='bat'
alias pacman='pacman --color=always'
alias nocors='chromium --disable-web-security --user-data-dir="/home/Antonio/Downloads/temp"'
alias tmux='tmux -u'
alias todo='glow /home/Antonio/Documents/todo-list'
# alias chrome='export CHROMIUM_FLAGS="--ozone-platform-hint=auto'

# The only EDITOR
export EDITOR='nvim'

# Todo List Path
export TODO_DIR='/home/Antonio/Documents/todo-list'

# vim motions in terminal
set -o vi

# run wm on login
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
 exec hyprland
fi

# dotnet tools
export DOTNET_ROOT=$HOME/dotnet
export PATH="$PATH:/home/Antonio/.dotnet/tools"
export PATH=$PATH:$HOME/dotnet

# History
HISTFILE=~/.zsh_history

# How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000

# Share history in every terminal session
setopt SHARE_HISTORY

# bun completions
[ -s "/home/Antonio/.bun/_bun" ] && source "/home/Antonio/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

# Starship
eval "$(starship init zsh)"
# Highlight command syntax
source /home/Antonio/code/source/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Android development
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
