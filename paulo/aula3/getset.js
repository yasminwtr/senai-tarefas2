// let serialNumbers = {
//     $n: 0,
//     get next(){
//         return this.$n =  this.$n++
//     },
//     set next(value){
//         this.$n += value 
//     }
// }

// console.log(serialNumbers.next)
// console.log(serialNumbers.next)
// serialNumbers.next = 10
// console.log(serialNumbers.next)

let calc = {
    $x: 0,
    $y: 0,
    $resultado: 0,
    get valorX(){
        return this.$x
    },
    set valorX(newX){
        this.$x = newX
    },
    get valorY(){
        return this.$y
    },
    set valorY(newY){
        this.$y = newY
    },
    get soma(){
        return this.$resultado = this.$x + this.$y
    },
    get sub(){
        return this.$resultado = this.$x - this.$y
    },
    get mult(){
        return this.$resultado = this.$x * this.$y
    },
    get div(){
        return this.$resultado = this.$x / this.$y
    }

}

calc.valorX = (Math.floor(Math.random() * 100))
calc.valorY = (Math.floor(Math.random() * 100))
console.log(calc.soma, calc.sub, calc.mult, calc.div)