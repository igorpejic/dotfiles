# PUT INTO: $HOME
# Path to your oh-my-zsh installation.
export ZSH=/home/igor/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"
TERMINAL=urxvt

# fixed pdb cannot delete bug
TERM=xterm

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(history-substring-search)

# User configuration

export PATH="/home/igor/.rbenv/plugins/ruby-build/bin:/home/igor/.rbenv/shims:/home/igor/.rbenv/bin:/home/igor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/apache-maven-3.5.4/bin:"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
##

# speed
xset r rate 220 40

##### ave ###
# define directory to put virtual environments
export WORKON_HOME=~/.virtualenvs

# source ave function
source /home/igor/ave.sh

### screen ####
# ~/.screenlayout/monitor.sh
export PATH=/home/igor/bin:$PATH

# For skype webcam
export XLIB_SKIP_ARGB_VISUALS=1

alias slock="/home/igor/lock.sh"
alias slock="/home/igor/lock.sh"
alias ni=nvim

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export PATH=$PATH:/snap/bin

export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export PATH=/home/igor/miniconda3/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/igor/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# <<< conda initialize <<<

~/.xinitrc
IMAGE_STORAGE_PATH=~/mnlth_images

alias i3lock="i3lock -c 000000"
alias ag='ag --hidden --ignore=tags.swp'
