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

class CarFactory {
    static func createCar(_ brand: CarBrand) -> Car {
        switch brand {
        case .Audi:
            return Audi()
        case .Honda:
            return Honda()
        case .Mazda:
            return Mazda()
        }
    }
}

// USAGE

let mazda = CarFactory.createCar(.Mazda)
mazda.drive()
