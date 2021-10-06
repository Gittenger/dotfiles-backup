ricomp() {
   # import directly into category folder, ie: Admin, General, etc
   componentLib=$REACT_COMPONENT_LIB
   results=($(fd -t d . ${componentLib} | fzf -m))
   cwd=$(pwd)
   [[ -n "$results" ]] && cp -r ${results[*]} $cwd

	node $NODE_SCRIPTS/updateComp.script.js ../

   unset componentLib results cwd
}

ricompcat() {
   # import directly into components folder
   componentLib=$REACT_COMPONENT_LIB
   results=($(fd -t d -d 1 . ${componentLib} | fzf -m))
   cwd=$(pwd)
   [[ -n "$results" ]] && cp -r ${results[*]} $cwd

	node $NODE_SCRIPTS/updateComp.script.js $cwd

   unset componentLib results cwd
}

