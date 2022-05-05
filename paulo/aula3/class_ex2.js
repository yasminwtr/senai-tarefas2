class Cliente {
    constructor(nome, email, whatsapp, twitter){
        this.nome = nome
        this.email = email
        this.whastapp = whatsapp
        this.twitter = twitter 
    }
    toStrng(){
    return "Cliente: " + this.nome + ", Email: " + this.email + ", Whatsapp: " + this.whastapp +", Twitter: " + this.twitter
    }
}
for(let i = 0; i < 100; i++){
    let cliente = new Cliente( "Scooby-"+i, "scooby"+i+"@scooby.doo.com", "48 9899-1234", "@Skooby" )
    console.log(cliente.toStrng())
}
// let cliente0 = new Cliente ("Eloiza", "eloiza@gmail.com", "1234-5678", "@loly_lacerda")
// let cliente1 = new Cliente ("Kailany", "kailany@gmail.com", "9637-5678", "@kailanyy")
// let cliente2 = new Cliente ("Yasmin", "yasmin@gmail.com", "5687-5678", "@yasmin_drake")
// let cliente3 = new Cliente ("Haru", "haru@gmail.com", "8424-4828", "@haru_22")
// let cliente4 = new Cliente ("Kauan", "kauan@gmail.com", "4321-0546", "@kauan_19")
// let cliente5 = new Cliente ("Bruno", "bruno@gmail.com", "4582-1259", "@bruno_breno")
// let cliente6 = new Cliente ("Breno", "breno@gmail.com", "1248-0213", "@breno_bruno")
// let cliente7 = new Cliente ("Guilherme", "guilherme@gmail.com", "4478-0147", "@gui_lherme")
// let cliente8 = new Cliente ("Amanda", "amanda@gmail.com", "9945-1023", "@mandy_lacerda")
// let cliente9 = new Cliente ("Ana", "ana@gmail.com", "0114-5932", "@loly_ana")

// console.log(cliente0, cliente1, cliente2, cliente3, cliente4, cliente5, cliente6, cliente7, cliente8, cliente9)