class Aluno {
    constructor(nome){
    this.nome = nome 
    }
    calcularMedia(){
        this.media = (this.nota1 + this.nota2 + this.nota3) / 3
    }
}
let aluno = new Aluno("Amanda")
aluno.nota1 = 9
aluno.nota2 = 9
aluno.nota3 = 0
aluno.calcularMedia()
console.log(aluno)