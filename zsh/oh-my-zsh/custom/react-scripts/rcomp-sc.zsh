rcompsc () {
	# $2 is category of component (Admin, General, Etc)
	# $1 is name of component
	mkdir "$2/$1" -p
	cd "$2/$1"
	touch $1.component.jsx $1.styles.jsx
	
	## VARS
	styleFile=$1.styles.jsx
	componentFile=$1.component.jsx
	capitalized=$(echo "$1" | sed 's/.*/\u&/')
	
	## IMPORTS
	echo  -e "import React from \"react\";\n\nimport {} from \"./$1.styles\";\n" >> ${componentFile}
	echo -e "import styled from \"styled-components\";\n" >> ${styleFile}
	
	## CONTENT
	echo -e "const ${capitalized} = () => (\n<div>Content here</div>);\n\nexport default ${capitalized};" >> ${componentFile}
	echo -e "export const MyComponent = styled.div\`\n\n\`;" >> ${styleFile}
	
	cd ../../

	dirToExecute=$(pwd)
	node $NODE_SCRIPTS/updateComp.script.js $dirToExecute

	unset styleFile componentFile capitalized dirToExecute
}

