ricompcat() {
   # import directly into category folder, ie: Admin, General, etc
   results=($(fd -t d . $REACT_COMPONENT_LIB | fzf -m))
   [[ -n "$results" ]] && cp -r ${results[*]} .
	node $NODE_SCRIPTS/updateComp.script.js ../

   unset results
}

ricomp() {
   # import directly into components folder
   $REACT_COMPONENT_LIB
   results=($(fd -t d -d 1 . $REACT_COMPONENT_LIB | fzf -m))
   [[ -n "$results" ]] && cp -r ${results[*]} .

	node $NODE_SCRIPTS/updateComp.script.js .

   unset results
}

