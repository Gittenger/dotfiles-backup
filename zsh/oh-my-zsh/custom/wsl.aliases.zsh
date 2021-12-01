# COMMAND SHORTCUTS
alias l='ls'
alias l.='ls -Ah'
alias ll='ls -lh'
alias ll.='ls -lAh'
alias mkd=mkdir
alias th=touch

#python
alias python=python3

# APP LAUNCHERS
alias codi=codium
alias vs.='code .'
alias f.='files .'
alias spotify='flatpak run com.spotify.Client &!'
alias gch='google-chrome &!'
alias ff='firefox &!'
alias wrtr='libreoffice --writer $1 &'
#alias vim=nvim
#alias nv=nvim
#alias v='nvim .'

# MISC TASKS
alias pyserve='python -m http.server 8000'
alias xgammmaset='xgamma -ggamma .85 -rgamma .75 -bgamma .85'
alias clr="clear"

# NAVIGATION
alias ...=../../
alias ....=../../../
alias zconf='cd ${ZDOTDIR}/custom'
alias zrc='vim ~/.zshrc'
alias nvconf='cd ~/.config/nvim'
alias winterm='/mnt/c/Users/pitte/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState'
alias .dot='cd ~/.dotfiles'
alias .d='cd ~/.dotfiles'
alias ~~='cd ${HSH}'
alias ~.='cd ${XTRA}'

# OTHER USEFUL SCRIPTS
alias tree="tree -I node_modules"
alias gorg="git remote show origin"

# FZF STUFF
alias fz="fzf"
alias fzh="fd -H -t f | fzf" # hidden files
alias fzi="fd -I -t f | fzf" # don't ignore
alias fzhi="fd -I -H -t f | fzf" # hidden and don't ignore
alias fzd="fd -t d | fzf"
alias fzdh="fd -H -t d | fzf" # directory search hidden
