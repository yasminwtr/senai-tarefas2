// array string
nomes = ['fernando', 'niara', 'matilda', 'pablo', 'antonio', 'cesar', 'nilce']
console.log(nomes);

nomes.push('zegôncio', 'vivian', 'laura')
console.log(nomes);

// pop exclui o último item do array
// nomes.pop()
// console.log(nomes);

// sort organiza os nomes por ordem alfabetica
console.log(nomes.sort());

// array numeros
numeros = [43, 65, 79, 12, 10, 34, 99, 100, 23, 86]
// sort organiza os números (1, 10, 100, 23, 200...)
console.log(numeros.sort((a, b) => a - b));