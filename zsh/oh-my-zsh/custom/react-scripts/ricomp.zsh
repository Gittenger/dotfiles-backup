ricomp() {
   componentLib=$HOME/code/templates/react-component-library/
   results=($(fd -t d . ${componentLib} | fzf -m))
   cwd=$(pwd)
   [[ -n "$results" ]] && cp -r ${results[*]} $cwd

	node $NODE_SCRIPTS/updateComp.script.js $cwd

   unset componentLib results cwd
}