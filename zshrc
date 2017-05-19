export ZSH=$HOME/.oh-my-zsh
ZETA_SHELL=$HOME/.zeta_shell
ZSH_CUSTOM=$ZETA_SHELL
ZSH_THEME="cobalt2"
DEFAULT_USER=$(id -un)


bindkey -v

source $ZSH/oh-my-zsh.sh

unset GREP_OPTIONS
unsetopt correct_all
unsetopt correct

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
PYTHONPATH+=(/usr/local/lib/python2.7/site-packages(N-/))
export PYTHONPATH
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export EDITOR="vim"
export HOMEBREW_NO_ANALYTICS=1
export TERM="screen-256color"

source $ZETA_SHELL/functions
source $ZETA_SHELL/aliases

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

stty -ixon
