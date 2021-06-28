rclone() {
	if [[ "$#" -eq "0" ]]
		then
			/usr/local/rclone/rclone --help
		else
			/usr/local/rclone/rclone "$@"
	fi		
}

rclcp() {
	if [[ "$#" -eq "0" ]]
		then
			echo "Error: expected rclone args. See rclone --help"
			exit 1
		else
			rclone copy $1 driveFolders:synced-folders/$2 
	fi		
}

rclall() {
   rclcp $HOME/Documents/0-learning/practical-bash-scripting "practical-bash-scripting"
   rclcp $HOME/Documents/0-learning/vim-notes "vim-notes"
   rclcp $HOME/Documents/0-learning/design-patterns-notes "design-patterns-notes"
   rclcp $HOME/Documents/0-learning/textbook-notes/ "textbook-notes"
   rclcp $HOME/Documents/my-linux-notes "my-linux-notes"
   rclcp $HOME/Documents/misc/blog-posts "blog-posts"
   rclcp $HOME/assets/my-assets/icons/svg "svg-icons"
}