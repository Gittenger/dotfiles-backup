rxcomp() {
   componentLib=$REACT_COMPONENT_LIB

   results=($(fzd -m))
   [[ -n "$results" ]] && cp -r ${results[*]} $componentLib

   unset componentLib results
}
