###
### Vim terminal commands
### 

# Mustang theme is only loaded if the terminal emulator Vim runs in supports at least 256 colors (or if you use the GUI version of Vim).
# Hint: If you’re using a terminal emulator that can show 256 colors, try setting TERM=xterm-256color in your terminal configuration or in your shell’s .rc file.
# from <http://nvie.com/posts/how-i-boosted-my-vim/#enable-syntax-highlighting>
TERM=xterm-256color



### 
### Helpful terminal aliases and stuff
### Feel free to change/remove them at your will.
###

# Directories
alias ls='ls -lha'
alias ..='cd ..'

# Git
alias gst='git status'
alias gl='git log'
alias gpom='git pull origin master'
alias gd='git diff'
alias gbl='git branch -l'
alias gck='git checkout'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# Everything else is green...
# 0 - Normal
# 1 - Bold
# 2 - 
function prompt {
       local BLACK="\[\033[0;30m\]"
       local RED="\[\033[0;31m\]"
       local GREEN="\[\033[0;32m\]"
       local YELLOW="\[\033[0;33m\]"
       local BLUE="\[\033[0;34m\]"
       local PURPLE="\[\033[0;35m\]"
       local CYAN="\[\033[0;36m\]"
       local WHITE="\[\033[0;37m\]"
       local WHITEBOLD="\[\033[1;37m\]"
export PS1="${WHITE}\u${RED}@${PURPLE}\h ${CYAN}\w ${WHITE}\$(parse_git_branch) ${YELLOW}$ \[\e[m\]\[\e[m\]"
}
prompt

# WELCOME MESSAGE
echo -e ""
echo -ne "Today is "; date
echo -e ""; cal;
echo -ne "Up time: ";uptime | awk /'up/ {print $3,$4}'
echo "";

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Make bash check its window size after a process completes
shopt -s checkwinsize

# LS COLORS
export CLICOLOR=1




export LSCOLORS=ExFxCxDxBxegedabagacad
