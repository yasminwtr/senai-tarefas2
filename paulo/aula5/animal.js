class Animal{
    #nome

    constructor(nome){
        this.#nome = nome
    }

    getFalar(){
        return "animal fala!"
    }

    toString(){
        return "nome: " + this.#nome
    }

    set nome(nome){
        this.#nome = nome
    }

    get nome(){
        return this.#nome
    }
}

class Gato extends Animal{
    #raca
    constructor(nome, raca){
        super(nome), this.#raca = raca
    }

    getFalar(){
        return "gato mia!"
    }

    toString(){
        return super.toString() + ", raça: " + this.#raca
    }

    set raca(raca){
        this.#raca = raca
    }

    get raca(){
        return this.#raca
    }
}

class Cachorro extends Animal{
    #idade

    constructor(nome, idade){
        super(nome)
        this.#idade = idade
    }

    getFalar(){
        return "cachorro late!"
    }

    toString(){
        return super.toString() + ", idade: " + this.#idade
    }

    set idade(idade){
        this.#idade = idade
    }

    get idade(){
        return this.#idade
    }
}

// let animal = new Animal('gambá')
// console.log(animal.toString())

// let gato = new Gato('garfield', 'bengal')
// console.log(gato.toString())

// let cachorro = new Cachorro('matilda', 15)
// console.log(cachorro.toString())

// console.log(animal.getFalar(), gato.getFalar(), cachorro.getFalar())

const listAnimais = () => {
    let p = document.getElementById('resultado')
    let animal = new Animal('gambá')
    let gato = new Gato('garfield', 'bengal')
    let cachorro = new Cachorro('matilda', 15)

    p.innerHTML += "<b>" + animal.toString() + "<b><br>" +
    "<br>" + gato.toString() + "<b><br>" +
    "<br>" + cachorro.toString() + "<b>"
}

listAnimais()