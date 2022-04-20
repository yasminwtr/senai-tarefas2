// o objeto funcionário possui os atributos nome e sobrenome.
// crie 2 funcionários, delete a propriedade sobrenome de um dos objetos e mostre via console os ambos funcionários.

let funcionario = {nome: 'laura', sobrenome: 'souza'}
let funcionario2 = {nome: 'matilda', sobrenome: 'titow'}

console.log(funcionario, funcionario2)
delete(funcionario2.sobrenome)
console.log(funcionario, funcionario2); 