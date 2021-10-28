const fs = require('fs')
const path = require('path')

let folderPath = './'
const args = process.argv.slice(2)
if (args[0]) {
	folderPath = args[0]
}
let Files = []

function ThroughDirectory(Directory) {
	fs.readdirSync(Directory).forEach((File) => {
		const Absolute = path.join(Directory, File)
		if (Absolute.startsWith('.git')) return
		else if (fs.statSync(Absolute).isDirectory())
			return ThroughDirectory(Absolute)
		else return Files.push(Absolute)
	})
}

ThroughDirectory(folderPath)

// Match category and component name
// save to components array to generate text data for index
const Matches = Files.filter((filename) =>
	filename.includes('.component.jsx')
).map((item) => item.match(/(\w+)\/(\w+).component.jsx/))

const Components = Matches.map(([full, category, name]) => ({
	full,
	category,
	name,
}))

const data = {}

Components.forEach(({ category, name }) => {
	if (!data['imports']) {
		data[
			'imports'
		] = `import ${name} from "./${category}/${name}.component.jsx"`
	} else
		data[
			'imports'
		] += `\nimport ${name} from "./${category}/${name}.component.jsx"`
})

data['content'] = `\nexport const CIndex = {
		${Components.map(({ name }) => name).join(',')}
	}
	export default CIndex
	`

const output = data.imports + data.content

fs.writeFileSync(
	path.join(path.resolve(folderPath), 'components.index.js'),
	output
)
