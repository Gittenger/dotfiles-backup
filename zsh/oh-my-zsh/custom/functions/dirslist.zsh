# log all current dir files
dirls() {
	fd -t d -d 1 . $1 | sed 's|.*\/\(.*\)|\1|' > $2
}

# create logs for known extension logs in dotfiles
logdirs() {
	fd -t d -d 1 . $NODE_V | sed 's|.*\/\(.*\)|\1|' > $HOME/.dotfiles/npm/node-modules.txt
	fd -t d -d 1 . $HOME/.vscode/extensions | sed 's|.*\/\(.*\)|\1|' > $HOME/.dotfiles/vscode/extensions.txt
	fd -t f -d 1 . $HOME/.config/VSCodium/CachedExtensionVSIXs | sed 's|.*\/\(.*\)|\1|' > $HOME/.dotfiles/codium/extensions.txt
	fd -t d -d 1 . $HOME/.local/share/gnome-shell/extensions | sed 's|.*\/\(.*\)|\1|' > $HOME/.dotfiles/gnome/gnome-shell-extensions-log.txt
}
