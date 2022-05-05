let object = {x: 2}
console.log('x' in object)

if('x' in object){
    delete(object.x)
}
console.log('x' in object)