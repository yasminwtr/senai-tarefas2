class Conta{
    #titular
    #numero

    constructor(titular, numero){
        this.#titular = titular
        this.#numero = numero
    }

    set titular(titular){ this.#titular = titular }
    get titular(){ return this.#titular }

    set numero(numero){ this.#numero = numero }
    get numero(){ return this.#numero }

    toString(){
        return "Titular: " + this.#titular + "\nNúmero: " + this.#numero
    }
}

class ContaEspecial extends Conta{
    #limite

    constructor(titular, numero, limite){
        super(titular, numero)
        this.#limite = limite
    }

    set limite(limite){ this.#limite = limite }
    get limite(){ return this.#limite }

    toString(){
        return super.toString() + "Limite: " + this.#limite
    }
}

class Poupança extends Conta{
    #aniversario

    constructor(titular, numero, aniversario){
        super(titular, numero)
        this.#aniversario = aniversario
    }

    set aniversario(aniversario){ this.#aniversario = aniversario }
    get aniversario(){ return this.#aniversario }

    toString(){
        return super.toString() + "Aniversário: " + this.#aniversario
    }

}

const criarConta = () => {
    let nome = document.getElementById('titular_id').value
    let dataNascimento = document.getElementById('dataNascimento_id').value
    let numeroConta = Math.floor(Math.random() * 1000000000)
    let limiteConta = Math.floor(Math.random() * 20000)

    if(!nome || !dataNascimento){
        alert("Preencha todos os campos.")
    } else {
        let conta = new Conta(nome, numeroConta)
        alert(conta.toString())
    }
}