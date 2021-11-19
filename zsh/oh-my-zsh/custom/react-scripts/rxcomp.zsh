rxcomp() {
   results=($(fzd -m))
   [[ -n "$results" ]] && cp -r ${results[*]} $REACT_COMPONENT_LIB

   unset results
}
