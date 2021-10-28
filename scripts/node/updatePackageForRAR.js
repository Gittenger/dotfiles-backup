const fs = require('fs')

const jsondata = fs.readFileSync(process.argv[2])
const package = JSON.parse(jsondata)

const keys = ['start', 'build', 'test']

keys.forEach(key => {
	package.scripts[key] = 'craco ' + key
})

const output = JSON.stringify(package)

fs.writeFileSync('package.json', output)
