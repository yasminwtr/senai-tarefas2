class Produto {
    constructor(nome, quantidade, preco){
        this.nome = nome
        this.quantidade = quantidade
        this.preco = preco
    }

    calcularTotal(){
        this.total = (this.quantidade * this.preco).toFixed(2)
    }

    toString(){
        return "Nome:" + this.nome + ", Quantidade: " + this.quantidade + ", Preço: " + this.preco + ", Total: " + this.total
    }
}

let produto = new Produto("Samsung S22", 3, 5400,14)
let produto2 = new Produto("Iphone 13", 6, 5414.05)

produto.calcularTotal()
produto2.calcularTotal()
console.log(produto, produto2)
console.log(produto.toString(), produto2.toString());
// delete produto2.nome
// console.log(produto2)