# ENV Variables
export EDITOR=nvim
export BROWSER=brave

# Set up the prompt

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Startship
eval "$(starship init zsh)"

# Following line was automatically added by arttime installer
export PATH=/home/aleksander/.local/bin:$PATH

# ---------------------------------------------------------

#        d8888 888 d8b                                     
#       d88888 888 Y8P                                     
#      d88P888 888                                         
#     d88P 888 888 888  8888b.  .d8888b   .d88b.  .d8888b  
#    d88P  888 888 888     "88b 88K      d8P  Y8b 88K      
#   d88P   888 888 888 .d888888 "Y8888b. 88888888 "Y8888b. 
#  d8888888888 888 888 888  888      X88 Y8b.          X88 
# d88P     888 888 888 "Y888888  88888P'  "Y8888   88888P' 

alias ls="lsd"
alias bat="batcat"
alias v="nvim"
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# ---------------------------------------------------------

# Spicetify
export PATH=$PATH:/home/aleksander/.spicetify

#Zsh syntax highlighting
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /home/aleksander/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Pokemon colorscripts on startup
pokemon-colorscripts -r --no-title

#Custom scripts
export PATH=$PATH:$HOME/Tools/EmptyTrash/:$HOME/.screenlayout/

# GTK
GTK_THEME=Catppuccin-Dark 
fpath+=${ZDOTDIR:-~}/.zsh_functions

alias luamake=/home/aleksander/Downloads/lua-language-server/3rd/luamake/luamake
