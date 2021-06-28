checkScripts() {
	if [ -z "$(ls -A $1)" ]
		then
			echo "$1/* contains no files, continuing"
		else 
			if [ $1 = $NODE_SCRIPTS ]
				then
					for f in $1/* 
					do 
					mkdir -p $dest/scripts/node-scripts 
					cp $f $dest/scripts/node-scripts
				done
			
			elif [ $1 = $SHELL_SCRIPTS ]
				then
					for f in $1/* 
					do 
					mkdir -p $dest/scripts/shell-scripts 
					cp $f $dest/scripts/shell-scripts
				done
			elif [ $1 = $PYTHON_SCRIPTS ]
				then
					for f in $1/* 
					do 
					mkdir -p $dest/scripts/python-scripts 
					cp $f $dest/scripts/python-scripts
				done
			fi
	fi
}

# sync config backup
syncdirs() {
	dest=$CONFIG_BACKUP
	cwd=$(pwd)

	zshfns=$ZSH_CUSTOM/functions
	for f in $zshfns/*; do cp $f $dest/zsh-functions; done
	
	reactfns=$ZSH_CUSTOM/react-scripts
	for f in $reactfns/*; do cp $f $dest/react-scripts; done

	fd -d 1 -t d . /usr/share/themes /usr/share/icons > $dest/themelogs.txt
	
	checkScripts $NODE_SCRIPTS
	checkScripts $PYTHON_SCRIPTS
	checkScripts $SHELL_SCRIPTS

   codiumConf=$HOME/.config/VSCodium/User
   for f in $codiumConf/snippets/*; do cp $f $dest/codium/snippets; done

   cp $codiumConf/keybindings.json $codiumConf/settings.json $dest/codium

	terminatorFile=$HOME/.config/terminator/config
	aliasFile=$ZSH_CUSTOM/aliases.zsh

	cp $terminatorFile $dest/terminator/
	cp $aliasFile $HOME/.zshrc $HOME/.vimrc $HOME/.vsvimrc $dest


	if [ "$#" -ne  "0" ]
   then
     cd $dest
	  ggp $1
	  cd $cwd
 	fi
	
	unset terminatorFile aliasFile dest zshfns reactfns cwd 
	unset -f checkScripts
}