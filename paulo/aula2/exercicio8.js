// crie uma lista de 10 produtos com nome e preço. crie um novo array de preços usando “map”. 
// em seguida utilize o “reduce” para calcular o total dos produtos.

produtos = []
for(i = 0; i < 10; i++){
    produtos.push({nome: ("produto " + (i+1)), preco: 3.5 * i})
}

console.log("produtos:", produtos);
console.log("total:", produtos.map(p => p.preco).reduce((pa, pt) => pa + pt))