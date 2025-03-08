#################################################
# OH-MY-ZSH CONFIGURATION
#################################################
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="simple"
TERMINAL=urxvt

# Uncomment to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment to use hyphen-insensitive completion. 
# HYPHEN_INSENSITIVE="true"

# Uncomment to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment if you want to disable marking untracked files
# under VCS as dirty.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment if you want to change the command execution time stamp.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
plugins=(history-substring-search)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

#################################################
# ENVIRONMENT VARIABLES
#################################################
# Editor configuration
export VISUAL=vim
export EDITOR="$VISUAL"

# Language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# For skype webcam
export XLIB_SKIP_ARGB_VISUALS=1

# Set directory to put virtual environments
export WORKON_HOME=~/.virtualenvs

# Django settings
# export DJANGO_SETTINGS_MODULE="project.settings.local"

#################################################
# PATH CONFIGURATION
#################################################
# Base PATH with common directories
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/apache-maven-3.5.4/bin:"

# Add personal bin directory
export PATH="$HOME/bin:$PATH"

# Add local bin
export PATH="$HOME/.local/bin:$PATH"

# Add snap binaries
export PATH="$PATH:/snap/bin"

# Add npm global
export PATH="~/.npm-global/bin:$PATH"
export NPM_CONFIG_PREFIX=~/.npm-global

# Add poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Add AssemblyAI CLI
export PATH="/home/igor/.assemblyai-cli:$PATH"

#################################################
# TOOL & PACKAGE MANAGEMENT
#################################################
# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load completion

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Ave virtual environment
source $HOME/dotfiles/ave.sh

# Conda initialization
__conda_setup="$('/home/igor/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/igor/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/igor/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/igor/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#################################################
# ALIASES
#################################################
# System aliases
alias i3lock="i3lock -c 000000"
alias slock="/home/igor/lock.sh"
alias ni=nvim
alias cal=ncal

# Git aliases
alias gs="git status"
alias gd="git diff HEAD"
alias gc="git commit -m"
alias gp="git push"

# Search aliases
alias ag='ag --hidden --ignore=tags.swp'

#################################################
# PROJECT SHORTCUTS
#################################################

#################################################
# NOTES & COMMENTS
#################################################
# NOTE: some env variables might be present in .zshenv
# SSH: export SSH_KEY_PATH="~/.ssh/dsa_id"
# Screen: ~/.screenlayout/monitor.sh

# Load local config
source $HOME/.zshrc.local
