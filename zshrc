export ZSH=$HOME/.oh-my-zsh
ZETA_SHELL=$HOME/.zeta_shell
ZSH_CUSTOM=$ZETA_SHELL
ZSH_THEME="agnoster"
DEFAULT_USER=$(id -un)

bindkey -v

source $ZSH/oh-my-zsh.sh

unset GREP_OPTIONS
unsetopt correct_all
unsetopt correct

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
PYTHONPATH+=(/usr/local/lib/python2.7/site-packages(N-/))
export PYTHONPATH
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export EDITOR="vim"
export TERM="screen-256color"

source $ZETA_SHELL/functions
source $ZETA_SHELL/aliases

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

stty -ixon

autoload -U compinit && compinit

# GO path settings
export PATH=$PATH:/usr/local/go/bin

DISABLE_AUTO_TITLE="true"

setopt +o nomatch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
