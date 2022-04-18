// // cria outro array com elementos duplicados do "original"
// let numeros = [0, 2, 4, 6, 8, 10, 12]
// console.log(numeros.map(n => n * 2))

// converte as strings para números
let numerosText = ['0', '2', '4', '6', '8', '10', '12', '14', '16', '18', '20']
let numeros = numerosText.map(n => parseFloat(n))
console.log(numerosText, numeros)