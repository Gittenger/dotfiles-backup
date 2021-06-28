cra.(){
   if [ "$#" -eq "0" ]
   then
      echo 'Error: expected name (1) as arg'
      exit 1
   else
      npx create-react-app $1
      cd $1
      reactsetup
   fi
}