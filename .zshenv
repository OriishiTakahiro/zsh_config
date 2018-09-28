#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#zmodload zsh/zprof


# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PATH=$PATH:
path=($path $HOME/.cabal/bin(N-/))

#rbenv
eval "$(rbenv init -)"
export PATH="$PATH:$HOME/.rbenv/shims"
path=($path $(ruby -e 'print Gem.user_dir')/bin(N-/))

# golang
export GOPATH=$HOME/go
path=($path $GOPATH/bin(N-/))

# Cargo
path=($path $HOME/.cargo/bin(N-/))

# Python version management: pyenv.
export PYENV_ROOT="$HOME/.pyenv"
path=($path $PYENV_ROOT/bin(N-/))
eval "$(pyenv init -)"

# for Neovim
export XDG_CACHE_HOME="$HOME/.cache"

# for git-radar
path=($path $HOME/.zsh/git-radar(N-/))
export GIT_RADAR_FETCH_TIME=30

export LANG=ja_JP.UTF-8
export EDITOR=nvim
RPROMPT="$RPROMPT: \S(git-radar --zsh--fetch)"


### aliases ###
if [ -x "`which exa`" ]; then   # check existance of command
  alias ls='exa'
fi
alias graph="log --decorate --graph --name-status --oneline"
alias grep="grep --color=auto"
alias vim="nvim"
