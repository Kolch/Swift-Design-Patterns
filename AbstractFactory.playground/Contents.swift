enum CarColor: String {
    case black = "Black"
    case white = "White"
}

enum CarBrand {
    case Audi, Honda, Mazda
}

protocol Car {
    var color: CarColor { get set }
    func drive()
}

class Audi: Car {
    var color: CarColor
    
    func drive() {
        print("driving \(color) audi")
    }
    
    init(_ color: CarColor) {
        self.color = color
    }
}

class Honda: Car {
    var color: CarColor
    
    func drive() {
        print("driving \(color) honda")
    }
    
    init(_ color: CarColor) {
        self.color = color
    }
}

class Mazda: Car {
    var color: CarColor
    
    func drive() {
        print("driving \(color) mazda")
    }
    
    init(_ color: CarColor) {
        self.color = color
    }
}

protocol CarFactory {
    static func createMazda() -> Mazda
    static func createHonda() -> Honda
    static func createAudi() -> Audi
}


class WhiteCarsFactory: CarFactory {
    static func createAudi() -> Audi {
        return Audi(.white)
    }
    
    static func createHonda() -> Honda {
        return Honda(.white)
    }
    
    static func createMazda() -> Mazda {
        return Mazda(.white)
    }
}

class BlackCarsFactory: CarFactory {
    static func createAudi() -> Audi {
        return Audi(.black)
    }
    
    static func createHonda() -> Honda {
        return Honda(.black)
    }
    
    static func createMazda() -> Mazda {
        return Mazda(.black)
    }
}

// USAGE
let whiteAudi = WhiteCarsFactory.createAudi()
let whiteHonda = WhiteCarsFactory.createHonda()
let blackMazda = BlackCarsFactory.createMazda()

whiteAudi.drive()
whiteHonda.drive()
blackMazda.drive()
