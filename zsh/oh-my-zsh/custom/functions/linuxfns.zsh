lbk() {
	lsblk -o name,mountpoint,label,size,fstype,uuid | egrep -v "^loop"
}

dff() {
	df -h | egrep -v /dev/loop
}
