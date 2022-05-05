class Pessoa{
    #nome

    constructor(nome){
        this.#nome = nome
    }

    set nome(nome){ this.#nome = nome }
    get nome(){ return this.#nome }

    toString(){
        return "Nome: " + this.#nome
    }
}

class Aluno extends Pessoa{
    #nota1
    #nota2
    #media

    constructor(nome, nota1, nota2, media){
        super(nome)
        this.#nota1 = nota1
        this.#nota2 = nota2
        this.#media = media
    }

    set nota1(nota1){ this.#nota1 = nota1 }
    get nota1(){ return this.#nota1 }

    set nota2(nota2){ this.#nota2 = nota2 }
    get nota2(){ return this.#nota2 }

    calcularMedia(){
        this.#media += (this.#nota1 + this.#nota2) / 2
    }

    toString(){
        return "Aluno\n" + super.toString() +
        "\nNota 1: " + this.#nota1 +
        "\nNota 2: " + this.#nota2 +
        "\nMédia: " + this.#media
    }
     
}

class Professor extends Pessoa{
    #horaTrabalhada
    #valorHora
    #salario

    constructor(nome, horaTrabalhada, valorHora, salario){
        super(nome)
        this.#horaTrabalhada = horaTrabalhada
        this.#valorHora = valorHora
        this.#salario = salario
    }

    set horaTrabalhada(horaTrabalhada){ this.#horaTrabalhada = horaTrabalhada }
    get horaTrabalhada(){ return this.#horaTrabalhada }

    set valorHora(valorHora){ this.#valorHora = valorHora }
    get valorHora(){ return this.#valorHora }

    calcularSalario(){
        
    }

    toString(){
        return "Professor\n" + super.toString() +
        "\nHoras trabalhadas: " + this.#horaTrabalhada +
        "\nValor da hora: " + this.#valorHora +
        "\nSalário: " + this.#salario
    }
}

let professor = new Professor('yasmin', 23, 45, 2191)
console.log(professor.toString())