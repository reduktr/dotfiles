#!/usr/bin/env zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

# Set environment variables
export TERM="xterm-256color" 
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export BAT_THEME="base16-256"


# XDG
export XDG_LOCAL_HOME="${HOME}/.local"
export XDG_DATA_HOME="${XDG_LOCAL_HOME}/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_STATE_HOME="${HOME}/.local/state"


# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file


# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:blue,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"


# Settings: LS_COLORS
LS_COLORS='no=0:fi=0:di=34'

# Hidden files
LS_COLORS+=":.*=90"

# Programming (purple)
LS_COLORS+=":*.py=36:*.sh=36"
LS_COLORS+=":*Dockerfile=36:*Makefile=36"

# Text files (green)
LS_COLORS+=":*.md=32:*.txt=32:*.html=32"

# Config files (yellow)
LS_COLORS+=":*.json=33:*.toml=33:*.yml=33"
LS_COLORS+=":*.in=33:*.conf=33:*.example=33"
LS_COLORS+=":.zshrc=33:.zprofile=33"
export LS_COLORS


# Disable Home Dir Clutter
export CUDA_CACHE_PATH="${XDG_CACHE_HOME}/nv"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export ANSIBLE_HOME="${XDG_DATA_HOME}/ansible"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons


# Path
export PATH=$PATH:$HOME/.local/bin

# FZF
#export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
#export FZF_DEFAULT_OPTS='-i --height=40%'

