rcomp () {
	# $1 is name of component
	# $2 is category (Admin/General/etc)
	cd $2
	touch $1.component.jsx
	
	## VARS
	componentFile=$1.component.jsx
	capitalized=$(echo "$1" | sed 's/.*/\u&/')
	
	## IMPORTS
	echo  -e "import React from \"react\";\n\n" >> ${componentFile}
	
	## CONTENT
	echo -e "const ${capitalized} = () => (\n<div>Content here</div>);\n\nexport default ${capitalized};" >> ${componentFile}	
	cd ../

	node $NODE_SCRIPTS/updateComp.script.js .

	unset componentFile capitalized
}
