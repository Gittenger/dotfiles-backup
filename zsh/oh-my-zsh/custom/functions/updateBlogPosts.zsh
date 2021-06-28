upmds() {
   if [ "$#" -ne  "0" ]
   then
      cp $1/* ../master
      cd ../sync-script
      node sync.js ../master --sync
      cd ../drafting
   fi
   if [ "$#" -eq "0" ]
   then
      echo 'error: specify directory to copy files from, use only in drafting dir'
   fi
}

up.(){
   upmds ./
}