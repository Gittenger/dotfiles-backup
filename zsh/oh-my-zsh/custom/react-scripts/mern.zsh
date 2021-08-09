mern(){
   if [ "$#" -eq "0" ]
   then
      echo 'Error: expected name (1) as arg'
      exit 1
   else
      git clone git@github.com:Gittenger/express-basic-template.git $1
      cd $1
      npm install
      git clone git@github.com:Gittenger/private-envs.git
      cp private-envs/basic-express.env .env
      rm -rf private-envs .git; git init
      cra. client
      rm -rf .git
      cd ../
   fi
}

