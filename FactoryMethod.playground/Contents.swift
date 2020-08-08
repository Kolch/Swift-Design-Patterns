enum CarBrand {
    case Audi, Honda, Mazda
}

protocol Car {
    func drive()
}

class Audi: Car {
    func drive() {
        print("driving audi")
    }
}

class Honda: Car {
    func drive() {
        print("driving honda")
    }
}

class Mazda: Car {
    func drive() {
        print("driving mazda")
    }
}



protocol CardFactory {
    static func create() -> Car
}

class HondaFactory: CardFactory {
    static func create() -> Car {
        return Honda()
    }
}

class MazdaFactory: CardFactory {
    static func create() -> Car {
        return Mazda()
    }
}

class AudiFactory: CardFactory {
    static func create() -> Car {
        return Audi()
    }
}

// USAGE

let mazda = MazdaFactory.create()
mazda.drive()

let audi = AudiFactory.create()
audi.drive()

