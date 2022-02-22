cra.(){
   if [ "$#" -eq "0" ]
   then
      echo 'Error: expected name (1) as arg'
      exit 1
   else
      git clone git@github.com:Gittenger/react-tailwind-template.git $1
      cd $1
      rm -rf .git
      git init
      npm i
   fi
}
