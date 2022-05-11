class People{
    #name
    
    constructor(name){
        this.#name = name
    }

    set name(name){ this.#name = name }
    get name(){ return this.#name }

    toString(){
        return "My name is " + this.#name
    }
}

class Student extends People{
    #note1
    #note2
    #average

    constructor(name, note1, note2, average){
        super(name)
        this.#note1 = note1
        this.#note2 = note2
        this.#average = average
    }

    set note1(note1){ this.#note1 = note1 }
    get note1(){ return this.#note1 }

    set note2(note2){ this.#note2 = note2 }
    get note2(){ return this.#note2 }

    get average(){ return this.#average }

    calculateAverage(){
        this.#average = (this.#note1 + this.#note2) / 2
    }

    toString(){
        return "Studant:\n" + super.toString() +
        "\nI have the notes: " + this.#note1 + ", " + this.#note2 +
        " and my average is " + this.#average
    }
}

class Teacher extends People{
    #hours
    #value
    #salary

    constructor(name, hours, value){
        super(name)
        this.#hours = hours
        this.#value = value
    }

    set hours(hours){ this.#hours = hours }
    get hours(){ return this.#hours }

    set value(value){ this.#value = value }
    get value(){ return this.#value }

    get salary(){ return this.#salary }

    calculateSalary(){
        this.#salary = this.#hours * this.#value
    }

    toString(){
        return "Teacher:\n" + super.toString() +
        "\nHours worked: " + this.#hours +
        "\nValue of the hours: " + this.value +
        "\nSalary: " + this.salary
    }

}

let jimmy = new Teacher('Jimmy', 160, 45)
jimmy.calculateSalary()
console.log(jimmy.toString())