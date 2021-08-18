const fs = require('fs')
const path = require('path')

let folderPath = './'
const args = process.argv.slice(2)
if (args[0]) {
	let folderPath = args[0]
	console.log(folderPath)
}
let Files = []

function ThroughDirectory(Directory) {
	fs.readdirSync(Directory).forEach((File) => {
		const Absolute = path.join(Directory, File)
		if (fs.statSync(Absolute).isDirectory()) return ThroughDirectory(Absolute)
		else return Files.push(Absolute)
	})
}

ThroughDirectory(folderPath)

const Matches = Files.filter((filename) =>
	filename.includes('.component.jsx')
).map((item) => item.match(/\/(\w+).component.jsx/))

const Components = Matches.map((item) => item[1])

const data = {}

Components.forEach((Component, i) => {
	if (!data['imports']) {
		data[
			'imports'
		] = `import ${Component} from "./${Component}${Matches[i][0]}"`
	} else
		data[
			'imports'
		] += `\nimport ${Component} from "./${Component}${Matches[i][0]}"`
})

data['imports'] += '\nimport TComp from "./typography/typography.components.js"'

data['content'] = `\nexport const CIndex = {
		${Components.join(',')}, TComp
	}
	export default CIndex
	`

const output = data.imports + data.content

// fs.writeFileSync('./components.index.js', output)
