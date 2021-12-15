# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode branch docker)
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

source $ZSH/oh-my-zsh.sh

# User configuration

typeset -U PATH
PATH=~/opt/anaconda3/bin:"${PATH}":"${PFDIR}":/opt/local/bin:/Library/TeX/texbin:/usr/local/bin:~/.bin:/Applications/CMake.app/Contents/bin:/opt/local/bin

# undo tab expansion if you don't like the result with shift-tab
bindkey "[Z" undo

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

# be forgiving of forgetting the cd
setopt autocd

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='/usr/bin/vim'

# Give correct functionality too home, end pg up/down keys 

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "\^H" backward-delete-word

# set directory/executable colors to bold blue/green

export LSCOLORS=ExfxcxdxCxegedabagacad

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
#
source ~/.local_aliases
source $ZSH/dotfiles/.aliases
