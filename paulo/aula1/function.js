// function
function somar(a, b){
    return parseFloat(a) + parseFloat(b)
}

let x = Math.trunc(Math.random() * 10)
let y = Math.trunc(Math.random() * 10)
console.log(somar(x, y));


// anony
const adicao = function(a, b){
    return parseFloat(a) + parseFloat(b)
}

let x2 = Math.trunc(Math.random() * 10)
let y2 = Math.trunc(Math.random() * 10)
console.log(adicao(x2, y2));


// arrow
const add = (x3, y3) => parseFloat(x3) + parseFloat(y3)

let x3 = Math.trunc(Math.random() * 10)
let y3 = Math.trunc(Math.random() * 10)
console.log(add(x3, y3));