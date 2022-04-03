import UIKit

var greeting = "Bonsoir Elliot"

var name: String = "Elliot"

func someFunc() {
    print("inside function body")
}

someFunc()


var closure: () -> () = {
    print("Closure executed.")
}

closure()
//====
func greeting(_ name: String, action: () -> ()) {
    print("Hello \(name)")
    action()
}


greeting("Bob") {
    print("Name has been printed.")
}
//====

func action(_ title: String, closure: (() -> ())? = nil) {
    print("The title of the action is: \(title)")
    closure?()
}


action("Learning about closures.")
//====
action("testing trailing closure.") {
    print("Action is complete")
}
//===


class BlackJack {
    private var gameScore: (Int) -> ()
    
    init(gameScore: @escaping (Int) -> ()) {
        self.gameScore = gameScore
    }
    
    func play() {
        gameScore(Int.random(in: 18...21))
    }
    
}

let blackJack = BlackJack { score in
    print("Score is : \(score)")
}
