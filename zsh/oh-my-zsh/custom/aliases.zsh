
# APP LAUNCHERS
alias codi=codium
alias vs.='code .'
alias spotify='flatpak run com.spotify.Client &!'
alias gch='google-chrome &!'
alias ff='firefox &!'
alias wrtr='libreoffice --writer $1 &'
alias vim=nvim
alias nv=nvim

# MISC TASKS
alias pyserve='python -m http.server 8000'
alias xgammmaset='xgamma -ggamma .85 -rgamma .75 -bgamma .85'
alias clr="clear"

# FAVORITE PLACES
alias cdzsh='cd ~/.oh-my-zsh/custom'
alias zshrc='code ~/.zshrc'
alias zshvs='cdzsh; vs.'

# OTHER USEFUL SCRIPTS
alias treecode="tree -I node_modules"

# FZF STUFF
alias fz="fzf"
alias fzh="fd -H -t f | fzf" # hidden files
alias fzi="fd -I -t f | fzf" # don't ignore
alias fzhi="fd -I -H -t f | fzf" # hidden and don't ignore
alias fzdir="fd -t d | fzf"
alias fzdirx="fd -t d | fzf -e" # directory search exact
alias fzdirh="fd -H -t d | fzf" # directory search hidden
alias f.="fd . ${HOME} | fzf" # search home
alias f.h="fd . -H ${HOME} | fzf" # search home, hidden
alias fx.="f. -e" # search home exact
alias fx.h="f.h -e" # search home hidden exact
alias s="cd." # super cd folder finder 
alias s.="cd.h" # super cd folder finder hidden
alias s.="cd.h" # super cd folder finder hidden
alias cd/x="cd/ --exact" # super cd root folder finder exact
