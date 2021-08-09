reactsetup() {
	npm i customize-cra react-app-rewired styled-components babel-plugin-styled-components react-gallery-carousel react-router-dom
	git clone git@github.com:Gittenger/react-setup.git
	
	## VSCODE SETTINGS/GITIGNORE
	cd react-setup
	cp -r .vscode .env config-overrides.js .gitignore ../
	cd ../
	
	## REMOVE UNNEEDED FILES
	setopt localoptions rmstarsilent
	yes | rm -f src/* 
	yes | rm -f src/.* 
	
	## COPY SRC
	cp -r ./react-setup/src/. ./src

	## REMOVE CLONE
	rm -rf ./react-setup

	unsetopt localoptions rmstarsilent

	## SCRIPT TO UPDATE PACKAGE.JSON
	node $NODE_SCRIPTS/updatePackageForRAR.js package.json
}
