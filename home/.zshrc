export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/ben/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    colored-man-pages
    zsh-syntax-highlighting
)

# Oh My Zsh!
source $ZSH/oh-my-zsh.sh

# Exa is better ls
alias ls="exa"
# Not steam locomotive
alias sl="ls -rs modified"
# Easy update
alias upd8="sudo apt update; sudo apt full-upgrade"

# Local dir for stuff
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/flatpak/exports/bin"

# TeXlive
export PATH=${PATH}:/usr/local/texlive/2021/bin/x86_64-linux
export INFOPATH=${INFOPATH}:/usr/local/texlive/2021/texmf-dist/doc/info

# Node version manager setup
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Prevent shell shared history
setopt no_share_history
unsetopt share_history