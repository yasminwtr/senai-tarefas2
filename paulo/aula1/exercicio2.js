// calcule a quantidade de caracteres de 10 nomes de um array e salve em outro array

// var nomes = ['andre', 'maicon', 'alice', 'mendez', 'luan', 'bernardo', 'carol', 'juana', 'fabricio', 'lurdes']
// var nomes2 = []

// for(let i = 0; i < nomes.length; i++){
//     console.log(nomes[i].length);
// }

// nomes2.push(nomes);
// console.log(nomes2);


array = [
    {nome: 'andrews'},
    {nome: 'vivan'},
    {nome: 'carol'},
    {nome: 'alice'},
    {nome: 'bernado'},
    {nome: 'lurdes'},
    {nome: 'maicon'},
    {nome: 'bruna'},
    {nome: 'matilda'},
    {nome: 'yasmin'}
]

console.log(array.map(a => a.nome.length));

// calcula todos os caracteres dos nomes 
// console.log(array.map(a => a.nome.length).reduce((a, b) => a + b))