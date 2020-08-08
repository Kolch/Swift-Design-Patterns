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
