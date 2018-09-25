source $HOME/.zsrc/load_plugins.zsh
source $HOME/.zsrc/origin_func.zsh

# for zsh (ref: http://news.mynavi.jp/column/zsh/001)
autoload -U compinit					# for tab supplement
autoload -Uz colors						# use color scheme automatically
autoload -Uz vcs_info         # for use VCS(Version Control System)
compinit
setopt auto_pushd						  # supplement for cd command (using history)
setopt auto_menu              # show list up candidates of supplement automatically
setopt auto_list              # show list up candidates of supplement by list
setopt list_types             # show kind of supplement
setopt rm_star_silent
setopt prompt_subst           # expand variable reference in $PROMPT
setopt correct								# correct wrong command by zsh
setopt complete_in_word				# spplement word in a word
setopt hist_ignore_all_dups		# dont save same command to history
setopt share_history          # share history between zsh prompts which are activated at same time
setopt inc_append_history
setopt print_eight_bit        # can display Japanese
setopt nolistbeep							# bell wont work
set termguicolors							# use truecolors

# setting for keybind
bindkey -v										# for vim keybind
bindkey "^P" history-incremental-search-backward
bindkey "^N" history-incremental-search-forward


# for using color scheme
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
#
# PROMPT="%/%% "
PROMPT="%B%F{111}${HOST}: %~%f%b
%F{040}${USER}%f%B%F{041} ❯❯%f%b "
RPROMPT="%F{158}[%D{%m/%d %T}]%f"
SPROMPT="%r is correct? [n,y,a,e]: "

### display git info at zsh ###
zstyle ':completion:*:*:kill:*:process' list-colors '=(#b) #([%0-9])*=0=01;31'
#zstyle ':vcs_info:git:*' check-for-changes true
#zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
#zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
#zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
#zstyle ':vcs_info:*' actionformats '[%b|%a]'

zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache yes
# precmd () { vcs_info }
# __git_files() { _files }
#RPROMPT=$RPROMPT'${vcs_info_msg_0_}'


#function preexec() {
  #timer=$(($(date +%s%N)/1000000))
#}

#function precmd() {
  #if [ $timer ]; then
    #now=$(($(date +%s%N)/1000000))
    #elapsed=$(($now-$timer))

    #export RPROMPT="%F{cyan}${elapsed}ms %{$reset_color%}"
    #unset timer
  #fi
#}


screenfetch

#if type zprof > /dev/null 2>&1; then
  #zprof | less
#fi
