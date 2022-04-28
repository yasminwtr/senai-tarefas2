class Conta {
    #numeroAgencia
    #numeroConta
    #saldo

    constructor(numeroAgencia, numeroConta, saldo){
        this.#numeroAgencia = numeroAgencia
        this.#numeroConta = numeroConta
        this.#saldo = saldo
    }

    get numeroAgencia(){ return this.#numeroAgencia }
    set numeroAgencia(numeroAgencia){ this.#numeroAgencia = numeroAgencia }

    get numeroConta(){ return this.#numeroConta }
    set numeroConta(numeroConta){ this.#numeroConta = numeroConta }

    get saldo(){ return this.#saldo }

    depositar(valor){
        if(valor > 0){
            this.#saldo += valor
        }
    }

    sacar(valor){
        if(valor > 0 && valor <= this.#saldo){
            this.#saldo -= valor
        }
    }

    toString(){
        return "Agência: " + this.#numeroAgencia + ", Conta: " + this.#numeroConta + ", Saldo: " + this.#saldo
    }
}

let conta = new Conta('12345-6', '3456-7', 645)

// conta.depositar(1000)
// conta.sacar(500)
// conta.getSaldo()

console.log(conta.toString())