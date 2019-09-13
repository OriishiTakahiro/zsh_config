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

export LC_ALL=C

# fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
path=($path $HOME/.cabal/bin(N-/))

# awscli
path=($path $HOME/.local/bin(N-/))

# golang
export GOPATH=$HOME/go
path=($path $GOPATH/bin(N-/))

# rust
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src/
path=($path $HOME/.carbo/bin(N-/))

# Cargo
path=($path $HOME/.cargo/bin(N-/))

# for Neovim
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# for git-radar
path=($path $HOME/.zsh/git-radar(N-/))
export GIT_RADAR_FETCH_TIME=30

# for ruby
path=($path $HOME/.gem/ruby/2.6.0/bin(N-/))

# for yarn
path=($path `yarn global bin`(N-/))

export EDITOR=nvim
RPROMPT="$RPROMPT: \S(git-radar --zsh--fetch)"

### aliases ###
if [ -x "`which exa`" ]; then   # check existance of command
  alias ls='exa'
fi
alias graph="log --decorate --graph --name-status --oneline"
alias grep="grep --color=auto"
alias vim="nvim"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/takahiro/google-cloud-sdk/path.zsh.inc' ]; then . '/home/takahiro/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/takahiro/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/takahiro/google-cloud-sdk/completion.zsh.inc'; fi
