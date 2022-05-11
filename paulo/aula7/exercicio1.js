class Product{
    #name
    #quantity
    #unitaryPrice
    #total

    constructor(name, quantity, unitaryPrice, total){
        this.#name = name
        this.#quantity = quantity
        this.#unitaryPrice = unitaryPrice
        this.#total = total
    }

    set name(name){ this.#name = name }
    get name(){ return this.#name }

    set quantity(quantity){ this.#quantity = quantity }
    get quantity(){ return this.#quantity }

    set unitaryPrice(unitaryPrice){ this.#unitaryPrice = unitaryPrice }
    get unitaryPrice(){ return this.#unitaryPrice }

    set total(total){ this.#total = total}
    get total(){ return this.#total }

    calculateTotal(){
        this.#total = this.#quantity * this.#unitaryPrice
    }

    toString(){
        return "Product name: " + this.#name +
        "\nQuantity: " + this.#quantity +
        "\nUnitary price: " + this.#unitaryPrice +
        "\nTotal: " + this.#total
    }
}

let produtos = []
for(let i = 0; i < 10; i++){
    produtos.push(new Product("Ice cream " + i, i+1, i*2, 0))
}

console.log(produtos.toString())
console.log(produtos.map(p => {
    p.total = p.quantity * p.unitaryPrice
    return [p.name, p.quantity, p.unitaryPrice, p.total]
}))