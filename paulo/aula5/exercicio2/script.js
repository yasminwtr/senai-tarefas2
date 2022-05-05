class Pessoa{
    #nome
    #cpf

    constructor(nome, cpf){
        this.#nome = nome
        this.#cpf = cpf
    }

    toString(){
        return "Nome: " + this.#nome + "\nCPF: " + this.#cpf
    }

    set nome(nome){ this.#nome = nome }
    set cpf(cpf){ this.#cpf = cpf }

    get nome(){ return this.#nome }
    get cpf(){ return this.#cpf }
}

class Cliente extends Pessoa{
    #telefone

    constructor(nome, cpf, telefone){
        super(nome, cpf)
        this.#telefone = telefone
    }

    set telefone(telefone){ this.#telefone = telefone }
    get telefone(){ return this.#telefone}

    toString(){
        return super.toString() + "\nTelefone: " + this.#telefone
    }
}

const listClient = () => {
    let p = document.getElementById('resultado')
    let cliente = new Cliente ('Lucy', '803.143.893.05', '48 991601340')

    p.innerHTML += "<b>" + cliente.toString() + "<b>"
}

listClient()

