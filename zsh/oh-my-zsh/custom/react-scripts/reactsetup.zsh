reactsetup() {
	npm i customize-cra react-app-rewired styled-components babel-plugin-styled-components
	git clone git@github.com:Gittenger/react-setup-template.git
	
	## VSCODE SETTINGS/GITIGNORE
	mkdir .vscode
	cp -r ./react-setup-template/.vscode/. ./.vscode

	cp ./react-setup-template/config-overrides.js ./react-setup-template/.gitignore ./
	

	## REMOVE UNNEEDED FILES
	cd src
	rm App.css App.js App.test.js index.css index.js logo.svg reportWebVitals.js setupTests.js

	## COPY SRC
	cp -r ../react-setup-template/src/. ./

	## REMOVE CLONE
	cd ../
	rm -rf ./react-setup-template

	## SCRIPT TO UPDATE PACKAGE.JSON
	node $NODE_SCRIPTS/updatePackageForRAR.js package.json
}
