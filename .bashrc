# ~/.bashrc

# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Set environment variables
export TERM="xterm-256color" 
export EDITOR="nvim"
export HISTCONTROL=ignoredups:erasedups           # no duplicate entries
export TERMINAL="kitty"
export PATH=$PATH:$HOME/.local/bin
export BROWSER="firefox"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export BAT_THEME="base16-256"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# XDG Vars
export XDG_LOCAL_HOME="${HOME}/.local"
export XDG_DATA_HOME="${XDG_LOCAL_HOME}/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"

# Disable Home Dir Clutter
export LESSHISTFILE=-
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export CUDA_CACHE_PATH="${XDG_CACHE_HOME}/nv"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons

# FZF
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
export FZF_DEFAULT_OPTS='-i --height=40%'

# Starship
eval "$(starship init bash)"

# Neofetch auto-open
neofetch

# General Alias
alias rm='rm -vI'
alias mv='mv -iv'
alias cp='cp -iv'
alias mkdir='mkdir -pv'
alias v='fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias sd="cd ~ && cd \$(find * -type d | fzf)"
alias nf='neofetch'
alias ff='fastfetch'
alias cc='clear'
alias df='df -h'
alias cat='bat'
alias free='free -m' # show sizes in MB
alias z='zathura'
alias ansibleupdate='just setup-all -K --ask-become-pass --ask-vault-pass'
alias conf='cd ~/.config'

# Eza Alias
alias ll='eza --all --long --color=auto --icons --group-directories-first'
alias la='eza --grid --all --color auto --icons --sort=type'
alias lt='eza --tree --level=2 --icons'
alias ls='eza --grid --color auto --icons --sort=type'

# Tmux Alias
alias tm='tmux'
alias tma='tmux attach-session'
alias tmat='tmux attach-session -t'
alias tmks='tmux kill-session -a'
alias tml='tmux list-sessions'
alias tmn='tmux new-session'
alias tmns='tmux new -s'
alias tms='tmux new-session -s'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#shopt
shopt -s autocd
shopt -s cdspell
shopt -s histappend # do not overwrite history
shopt -s cmdhist # save multi-line commands in history as single line

unset rc
