# rclone() {
# 	if [[ "$#" -eq "0" ]]
# 		then
# 			/usr/local/rclone/rclone --help
# 		else
# 			/usr/local/rclone/rclone "$@"
# 	fi		
# }

rclls() {
	rclone ls remote:synced-folders/home
}

rclcp() {
	if [[ "$#" -eq "0" ]]
		then
			echo "Error: expected rclone args. See rclone --help"
			exit 1
		else
			rclone copy $1 remote:synced-folders/home/$2 
	fi		
}

rclall() {
   rclcp $RCLONE_NOTES "notes"
   rclcp $RCLONE_BOOKS "books"
   rclcp $RCLONE_LANG "languages"
   rclcp $RCLONE_BLOG "blog-posts"
   rclcp $RCLONE_GNOTE "gnote"
}
