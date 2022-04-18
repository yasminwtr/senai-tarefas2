// crie um array com o valor de 20 produtos. crie um map para fazer o cálculo do desconto de 15% no valor do produto.

let produtos = []
for(i = 0; i < 20; i++){
    produtos.push({nome: ("produto " + (i+1)), preco: 3 * i, desconto: 0})
}

produtos.map(p => p.desconto = p.preco - (p.preco * 0.15))
console.log(produtos)