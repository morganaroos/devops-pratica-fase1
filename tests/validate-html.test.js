const fs = require('fs');
const path = require('path');

const htmlPath = path.join(__dirname, '../src/index.html');
const html = fs.readFileSync(htmlPath, 'utf8');

function assert(condition, message) {
    if (!condition) {
        console.error(`Erro: ${message}`);
        process.exit(1);
    }
}

assert(html.includes('<!DOCTYPE html>'), 'O arquivo HTML deve conter DOCTYPE.');
assert(html.includes('<title>'), 'O arquivo HTML deve conter uma tag title.');
assert(html.includes('DevOps na Prática'), 'O HTML deve conter o nome do projeto.');
assert(html.includes('style.css'), 'O HTML deve referenciar o arquivo CSS.');

console.log('Todos os testes passaram com sucesso.');