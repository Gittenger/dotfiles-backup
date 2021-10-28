reactsetup() {
	npm i @craco/craco react-gallery-carousel react-router-dom
	npm i -D tailwindcss@npm:@tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9

	git clone git@github.com:Gittenger/react-setup.git
	
	## VSCODE SETTINGS/GITIGNORE
	cd react-setup
	cp -r .vscode .env .prettierrc craco.config.js tailwind.config.js .gitignore ../
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
	node $NODE_SCRIPTS/updateComp.script.js ./src/components

	## FORMAT UPDATED FILES
	prettier --single-quote --write package.json "./src/components/components.index.js"
}
