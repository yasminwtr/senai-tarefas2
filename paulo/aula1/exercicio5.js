// crie um array com 30 produtos. cada produto possui: nome, preço e validade (true/false). mostre para os usuários:
// a) filtro 1: liste apenas os produtos que estão dentro do prazo de validade;
// b) filtro 2: liste apenas os produtos com valor entre R$50,00 a R$100,00

produtos = [
    {nome: 'pão de queijo', preco: 2.5, validade: true},
    {nome: 'pão de milho', preco: 6, validade: false},
    {nome: 'pão caseiro com manteiga', preco: 4.5, validade: true},
    {nome: 'balde', preco: 10, validade: false},
    {nome: 'teclado vermelho', preco: 43, validade: false},
    {nome: 'chapeu de palha', preco: 100, validade: false},
    {nome: 'bolo de milho', preco: 12, validade: true},
    {nome: 'brigadeiro de coco queimado', preco: 5, validade: true},
    {nome: 'carregador de celular', preco: 30, validade: false},
    {nome: 'torta de bolacha gigante', preco: 59.9, validade: true},
    {nome: 'cortina amarela', preco: 130, validade: true},
    {nome: 'carteira', preco: 49.9, validade: true},
    {nome: 'risoles sorteado', preco: 13, validade: true},
    {nome: 'coxinha com catupiry', preco: 3, validade: true},
    {nome: 'cama box colchão macio', preco: 500.99, validade: true},
    {nome: 'cobertor de florzinha', preco: 99.99, validade: true},
    {nome: 'mochila', preco: 120, validade: false},
    {nome: 'calça jeans escura', preco: 99, validade: false},
    {nome: 'tapioca', preco: 12, validade: false},
    {nome: 'recheadinho de goiaba', preco: 2.59, validade: false},
    {nome: 'ônibus', preco: 1200, validade: true},
    {nome: 'manteiga de amendoim', preco: 34.9, validade: true},
    {nome: 'lula frita', preco: 43.23, validade: true},
    {nome: 'salmao marinado', preco: 78.53, validade: true},
    {nome: 'kiwi', preco: 4.5, validade: true},
    {nome: 'maçã', preco: 9.8, validade: false},
    {nome: 'moletom roxo', preco: 64.76, validade: false},
    {nome: 'caixinha de giz de cera', preco: 54.56, validade: false},
    {nome: 'açaí 500ml', preco: 20.34, validade: true},
    {nome: 'potão de açaí 5l', preco: 60.78, validade: true}
]

console.log("produtos na validade", produtos.filter(b => b.validade))
console.log("produtos com o valor entre R$50,00 a R$100,00", produtos.filter(b => b.preco <= 100 && b.preco >= 50))

// paulo:
// let produtos = []
// for(i = 0; i < 30; i++){
//     produtos.push({nome: ("produto " + (i+1)), preco: 2.8 * i, validade: i%2 == 0})
// }

// console.log(produtos)
// console.log(produtos.filter(p => p.validade && p.preco >= 50 && p.preco <= 100))