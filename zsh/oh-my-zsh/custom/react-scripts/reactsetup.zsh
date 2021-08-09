reactsetup() {
	npm i customize-cra react-app-rewired styled-components babel-plugin-styled-components
	git clone git@github.com:Gittenger/react-setup.git
	
	## VSCODE SETTINGS/GITIGNORE
	cp -r ./react-setup/.vscode/. ./react-setup/config-overrides.js ./react-setup/.gitignore ./
	
	## REMOVE UNNEEDED FILES
	yes | rm ./src/* 
	rm ./src/.*

	## COPY SRC
	cp -r ./react-setup/src/. ./src

	## REMOVE CLONE
	rm -rf ./react-setup

	## SCRIPT TO UPDATE PACKAGE.JSON
	node $NODE_SCRIPTS/updatePackageForRAR.js package.json
}
