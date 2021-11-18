# super cd jump from current
s() {
	result=$(fd -t d . | fzf $1)
	cd $result
	unset result
}

# super cd jump from current, show hidden
s.() {
	result=$(fd -H -t d . | fzf $1)
	cd $result
	unset result
}

# root super cd
s/() {
	result=$(fd -H -t d -E "/home/john/" . "/"| fzf $1)
	cd $result
	unset result
}

# root super cd exact
s/x() {
	result=$(fd -H -t d -E "/home/john/" . "/"| fzf -e $1)
	cd $result
	unset result
}

# super cd music
s.m() {
	result=$(fd -t d . ${HSH}/music | fzf)
	cd $result
	unset result
}

# for assets
s.a() {
	result=$(fd -t d . ${HSH}/assets | fzf)
	cd $result
	unset result
}
