// Example 1

protocol PaymentStrategy {
    func pay()
}

struct Payemnt {
    let strategy: PaymentStrategy
    
    func pay(){
        self.strategy.pay()
    }
}

struct CardPayemnt: PaymentStrategy {
    func pay() {
        print("pay with card")
    }
}

struct CashPayemnt: PaymentStrategy {
    func pay() {
        print("pay with cash")
    }
}

struct ApplePayPayemnt: PaymentStrategy {
    func pay() {
        print("pay with apple pay")
    }
}

// USAGE

let cardPayemnt = Payemnt(strategy: CardPayemnt())
let cashPayemnt = Payemnt(strategy: CashPayemnt())

cardPayemnt.pay()
cashPayemnt.pay()


// Example 2

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("professional swimming")
    }
}

class NoneSwimmer: SwimBehavior {
    func swim() {
        print("non-swimming")
    }
}

protocol DiveBehavior {
    func dive()
}


class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("professional diving")
    }
}

class NoneDiver: DiveBehavior {
    func dive() {
        print("non-diving")
    }
}

class Human {
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior){
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior){
        self.diveBehavior = db
    }
}

// USAGE
let human = Human(swimBehavior: NoneSwimmer(), diveBehavior: NoneDiver())
human.performDive()
human.performSwim()

human.setSwimBehavior(sb: ProfessionalSwimmer())
human.performSwim()
