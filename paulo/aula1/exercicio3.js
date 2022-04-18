// crie um algoritmo para cadastrar em um array os seguintes dados do produtos: nome, quantidade e valor unitário.
// o algoritmo deve calcular o valor total dos produtos e o preço médio.

produtos = [
    {nome: 'Pão de milho', quantidade: 2, valorUnitario: 10, total: 0},
    {nome: 'Pão caseiro com manteiga', quantidade: 5, valorUnitario: 12, total: 0},
    {nome: 'Mini coxinha de queijo', quantidade: 8, valorUnitario: 1.5, total: 0},
    {nome: 'Pamonha gigante', quantidade: '1', valorUnitario: 50.9, total: 0}
]

// for(i = 0; i < produtos.length; i++){
//     produtos[i].total = produtos[i].valorUnitario * produtos[i].quantidade
// }

produtos.map(p => p.total = p.valorUnitario * p.quantidade)
console.log('Produtos vendidos: ', produtos)