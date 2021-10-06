rxcomp() {
   componentLib=$REACT_COMPONENT_LIB

   results=($(fzdir -m))
   [[ -n "$results" ]] && cp -r ${results[*]} $componentLib

   unset componentLib results
}
