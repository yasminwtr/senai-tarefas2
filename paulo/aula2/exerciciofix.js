// o objeto cliente possui os atributos nome, email e telefone.
// crie 3 clientes usando a forma literal, 3 usando o método create e mostre ao usuário os 5 clientes impressos no console.

// forma literal
let cliente1 = {nome: 'yasmin', email: 'yasmin@gmail.com', telefone: '48 991601342'}
let cliente2 = {nome: 'laura', email: 'laura43@gmail.com', telefone: '48 991546565'}
let cliente3 = {nome: 'matilda', email: 'matilda@gmail.com', telefone: '48 99163443'}

// método create
let cliente4 = Object.create({nome: 'hugo', email: 'hugo22@gmail.com', telefone: '48 991563412'})
let cliente5 = Object.create({nome: 'iris', email: 'iris65@gmail.com', telefone: '48 998439238'})
let cliente6 = Object.create({nome: 'rafael', email: 'rafael45@gmail.com', telefone: '48 993464376'})

console.log(cliente1, cliente2, cliente3, cliente4.nome);


// prof
let clientes = []
for(i = 0; i < 6; i++){
    clientes.push({nome: 'yasmin'+i, email: 'yas@gmail.com'+i, telefone: '48 993293490'})
}
console.log(clientes);