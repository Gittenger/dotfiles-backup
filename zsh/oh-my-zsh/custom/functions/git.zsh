alias gst="git status"
alias glog="git log"
alias gorg="git remote show origin"

ggp() {
   git add .
   git commit -m $1
   ggpush
}

# gitignore
gitig() {
	touch .gitignore
	cat $SCRIPT_ASSETS/gitignore >> .gitignore
}