// let point = {}
// let point2 = {x:2, y:4}
// console.log(point, point2);

// point.x = 2
// console.log(point);

let point = new Object({x:2})
console.log(point);

let point2 = Object.create({x:2, y:8})
console.log(point2.x, point2.y);