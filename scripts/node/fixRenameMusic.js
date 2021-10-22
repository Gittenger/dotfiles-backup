const path = require('path')
const fs = require('fs')

// path variables for use below
const albumStr = process.argv[2]
const albumAbs = path.resolve(albumStr)

// check for year
const yearRegex = /((19|20)\d\d)/
let year = ''
let resultStr = ''
if (yearRegex.test(albumStr)) {
	const match = albumStr.match(yearRegex)
	year += match[1]
	// remove year from string
	resultStr = albumStr.replace(yearRegex, '')
} else resultStr += albumStr

// remove [] | _
resultStr = resultStr.replace(/[\[\]\|\_]/g, ' ').trim()

let final = ''
if (year) {
	final = String.prototype.concat('(', year, ') - ', resultStr)
} else {
	final = resultStr
}

fs.renameSync(path.resolve(albumAbs), final)

// final consideration is to remove adds for blogs, although this is only a minor concern as it's not too common
