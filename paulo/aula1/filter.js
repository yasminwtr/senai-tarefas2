let bicicletas = [
    {nome: 'mountain', preco: 200.40, isAtiva: false},
    {nome: 'barra forte', preco: 350.23, isAtiva: false},
    {nome: 'caloi 10', preco: 1000.56, isAtiva: true},
    {nome: 'caloi aspen sport', preco: 649.89, isAtiva: false},
    {nome: 'caloi explorer aro 29', preco: 2000, isAtiva: true}
]

console.log("todas as bikes", bicicletas)
console.log("bikes ativas", bicicletas.filter(b => b.isAtiva && b.preco <= 1500))