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

### 
### Vim terminal commands
### 

# Directories
alias ls='ls -lha'
alias ..='cd ..'
alias du='du -h'
alias df='df -h'

# Git
alias gst='git status'
alias gl='git log'
alias gpom='git pull origin master'
alias gd='git diff'
alias gds='git diff --staged'
alias gbl='git branch -l'
alias gck='git checkout'
alias gi='git add -i'

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

# Função opcional para pegar branch do Git
parse_git_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

# Definindo o prompt colorido
PROMPT='%F{white}%n%F{red}@%F{magenta}%m %F{cyan}%~ %F{white}$(parse_git_branch) %F{yellow}$ %f'
 

# WELCOME MESSAGE
echo -e ""
echo -ne "Today is "; date
echo -e ""; cal;
echo -ne "Up time: ";uptime | awk /'up/ {print $3,$4}'
echo "";


# Se não for um shell interativo, sai daqui
[[ $- != *i* ]] && return

# Faz o Zsh atualizar o tamanho da janela automaticamente
setopt checkwinsize

# LS COLORS (Zsh usa LS_COLORS, não LSCOLORS do Bash/macOS)
export CLICOLOR=1
export LS_COLORS="di=34:ln=36:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=37;41:sg=30;43:tw=30;42:ow=34;42"

# GIT COMPLETION
if [ -f ~/.vim/.git-completion.zsh ]; then
  source ~/.vim/.git-completion.zsh
fi
