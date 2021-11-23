# rclone() {
# 	if [[ "$#" -eq "0" ]]
# 		then
# 			/usr/local/rclone/rclone --help
# 		else
# 			/usr/local/rclone/rclone "$@"
# 	fi		
# }

rclls() {
	rclone ls gitdrive:synced
}

rclcp() {
	if [[ "$#" -eq "0" ]]
		then
			echo "Error: expected rclone args. See rclone --help"
			exit 1
		else
			rclone copy $1 gitdrive:synced/$2 
	fi		
}

rclall() {
   rclcp $RCLONE_NOTES "docs/notes"
   rclcp $RCLONE_BOOKS "docs/books"
   rclcp $RCLONE_LANG "docs/languages"
   rclcp $RCLONE_BLOG "docs/blog-posts"
   rclcp $RCLONE_GNOTE "docs/gnote"
	 rclcp $RCLONE_ICONS "assets/icons"
	 rclcp $RCLONE_ILLUSTRATIONS "assets/illustrations"
	 rclone copy ~/.config/rclone/rclone.conf gitdrive:synced
	 cpwd
	 cd $RCLONE_INSPIRATION/../
	 tar -cf inspiration.tar.gz "inspiration"
	 rclcp inspiration.tar.gz "assets/inspiration"
	 rm inspiration.tar.gz
	 cd $(clipboard)
}
