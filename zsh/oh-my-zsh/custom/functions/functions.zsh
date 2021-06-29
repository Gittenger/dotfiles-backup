SendPy() {
	for f in *.py; do
		mv $f $1
	done
}

mkpy() {
	echo "#! /usr/bin/python3\n\n# ${1}.py - \n\n" > ${1}.py
	chmod +x ${1}.py
}

mkalgo() {
	mkdir $1
	cd $1
	touch index.py instructions.md notes.txt
}

files() {
	nautilus $1 &!
}

rstgo() {
	google-chrome &!
	sleep 1
	thunderbird &!
	bitwarden &!
}

vs() {
	for var in "$@"
	do
		code $var
	done
}

vs..() {
	results=$(f.h -m)
	for f in $results; do vs $f; done
	unset results
}

# copy multiple
cpm(){
	results=($(fzf -m))
   
   [[ -n "$results" ]] && cp -r ${results[*]} $1
	unset results
}

# move multiple
mvm() {
	results=($(fzf -m))
	for f in $results; do mv $f $1; done
	unset results
}

# copy cwd
cpwd() {
	pwd | tr -d '\n' | clipboard
}

# super cd
cd.() {
	result=$(fd -t d . ${HOME}| fzf)
	cd $result
	unset result
}

# super cd hidden
cd.h() {
	result=$(fd -H -t d . ${HOME}| fzf)
	cd $result
	unset result
}

# root cd
cd/() {
	cd $(fd -H -t d -E "/home/john/" . "/"| fzf $1)
}

# change jpg to albumart.jpg
alb() {
	mv $1 albumart.jpg
}

# feed into rename music func
rn() {
	node $NODE_SCRIPTS/renameMusic.js $1
}

# loop through all folders in an artist folder,
# rename all at once
rnall() {
	fd . --max-depth=1 --type=d --exec node $NODE_SCRIPTS/renameMusic.js '{}'
}

# script for applying rn script to every artist folder in
rnallx() {
    for d in ./*/ ; do /bin/zsh -c "(cd '$d' && fd . --max-depth=1 --type=d --exec node $NODE_SCRIPTS/renameMusic.js '{}')"; done
}