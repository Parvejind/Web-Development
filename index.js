const path = requirel("path");

// console.log(path.sep);

// console.log(process.env.PATH)

// console.log(path.delimiter)

const filepath1 = '/public_html/home/index.html';

const currentFilePath = _filename;
console.log(currentFilePath);

let basename = path.basename(currentFilePath)
console.log(result)

let basenameWithoutExt = path.basename(currentFilePath, '.js')

let dirname = path.dirname(currentFilePath)
console.log(dirname)