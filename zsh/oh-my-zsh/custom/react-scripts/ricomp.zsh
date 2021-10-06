ricomp() {
   componentLib=$REACT_COMPONENT_LIB
   results=($(fd -t d . ${componentLib} | fzf -m))
   cwd=$(pwd)
   [[ -n "$results" ]] && cp -r ${results[*]} $cwd

	node $NODE_SCRIPTS/updateComp.script.js $cwd

   unset componentLib results cwd
}
