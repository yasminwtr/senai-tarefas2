// crie um algoritmo que possui um array com 7 nomes de clientes. Ao final utilize a função splice 
// para eliminar os 3 últimos elementos e adicione mais 2 nomes.

clientes = ['matilda', 'josé', 'carol', 'bruna', 'gugu', 'felicio', 'suzana']
clientes.splice(4, 3, 'naiara', 'ruty')
console.log(clientes);