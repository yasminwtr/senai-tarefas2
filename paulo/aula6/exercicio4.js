class Funcionario{
    #nome
    #cpf
    #dataNascimento

    constructor(nome, cpf, dataNascimento){
        this.#nome = nome
        this.#cpf = cpf
        this.#dataNascimento = dataNascimento
    }

    set nome(nome){ this.#nome = nome }
    get nome(){ return this.#nome }

    set cpf(cpf){ this.#cpf = cpf }
    get cpf(){ return this.#cpf }

    set dataNascimento(dataNascimento){ this.#dataNascimento = dataNascimento }
    get dataNascimento(){ return this.#dataNascimento }
}

class Engenheiro extends Funcionario{
    #telefone

    constructor(nome, cpf, dataNascimento, telefone){
        super(nome, cpf, dataNascimento)
        this.#telefone = telefone 
    }

    set telefone(telefone){ this.#telefone = telefone }
    get telefone(){ return this.#telefone }
}

class Diretor extends Funcionario{
    #salario

    constructor(nome, cpf, dataNascimento, salario){
        super(nome, cpf, dataNascimento)
        this.#salario = salario
    }

    set salario(salario){ this.#salario = salario }
    get salario(){ return this.#salario }
}

class Secretario extends Funcionario{
    #dataContratacao

    constructor(nome, cpf, dataNascimento, dataContratacao){
        super(nome, cpf, dataNascimento)
        this.#dataContratacao = dataContratacao
    }

    set dataContratacao(dataContratacao){ this.#dataContratacao = dataContratacao }
    get dataContratacao(){ return this.#dataContratacao }
}

class Gerente extends Funcionario{
    #email

    constructor(nome, cpf, dataNascimento, email){
        super(nome, cpf, dataNascimento)
        this.#email = email
    }

    set email(email){ this.#email = email }
    get email(){ return this.#email }
}