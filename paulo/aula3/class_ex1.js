class Conta {
    constructor(numeroAgencia, numeroConta, saldo){
        this.numeroAgencia = numeroAgencia
        this.numeroConta = numeroConta
        this.saldo = saldo
    }

    depositar(valor){
        if(valor > 0){
            this.saldo += valor
        }
    }

    sacar(valor){
        if(valor > 0 && valor <= this.saldo){
            this.saldo -= valor
        }
    }
    getSaldo(){
        return this.saldo 
    }
}

let conta = new Conta('12345-6', '3456-7', 100)
conta.depositar(1000)
conta.sacar(500)
// console.log(conta.getSaldo())
console.log(conta);

//     depositar(valor){
//        this.saldo = this.saldo + valor
//     }
//     sacar(valorParaSacar){
//         if (valorParaSacar <= this.saldo){
//             this.saldo = this.saldo - valorParaSacar
//             return valorParaSacar;
//     } else {
//         return 0; 
//     }

// }
// }