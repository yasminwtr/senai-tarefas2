class Loja{
    #nome
    #cnpj
    #localizacao
    constructor(nome, cnpj){
        this.#nome = nome
        this.#cnpj = cnpj
    }

    get nome(){ return this.#nome }
    set nome(nome){ this.#nome = nome }

    get cnpj(){ return this.#cnpj }
    set cnpj(cnpj){ this.#cnpj = cnpj }

    get localizacao(){ return this.#localizacao }
    set localizacao(localizacao){ this.#localizacao = localizacao }
}

let loja = new Loja('Americanas', '234.545.56-213', 'ingleses')
console.log(loja)
console.log(loja.nome, loja.cnpj, loja.localizacao)
loja.nome = 'Casas Bahia'
loja.cnpj = '654.657.31-562'
loja.localizacao = 'irlanda'
console.log(loja.nome, loja.cnpj, loja.localizacao)