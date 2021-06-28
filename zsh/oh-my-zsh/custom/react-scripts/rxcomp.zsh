rxcomp() {
   componentLib=$HOME/code/templates/react-component-library/

   results=($(fzdir -m))
   [[ -n "$results" ]] && cp -r ${results[*]} $componentLib

   unset componentLib results
}