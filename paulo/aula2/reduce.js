let produtos = [
    {nome: 'pao', preco: 2},
    {nome: 'pao caseiro', preco: 5},
    {nome: 'pao de forma', preco: 6},
    {nome: 'pao francês', preco: 1.4},
    {nome: 'pao de trigo', preco: 3},
    {nome: 'pao de milho', preco: 12},
    {nome: 'pao de aipim', preco: 20},
    {nome: 'pao de chinequi', preco: 8},
    {nome: 'pao doce', preco: 7},
    {nome: 'pao cuca', preco: 5},
    {nome: 'orelha de macaco', preco: 10}
]
console.log("Total: ", produtos.map(p => p.preco).reduce((pa, pt)=> pa + pt))