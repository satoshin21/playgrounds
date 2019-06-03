//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation

func test(closure: (() -> Void)? = nil) {

    closure?()
}


func test2(closure: (() -> Void)?) {

    test(closure: closure)
}

test2 {
    print("hogehoge")
}

enum Hoge: Equatable {

    case foo
    case bar(hoge: String)
    case hoge(hoge: String)
    static func ==(lhs: Hoge, rhs: Hoge) -> Bool {

        switch (lhs, rhs) {
        case (.foo, .foo):
            return true
        case (.hoge(let lvalue), .hoge(let rvalue)):
            return lvalue == rvalue
        case (.foo, _), (.hoge, _):
            return false
        }
    }
}



Hoge.foo == .foo
Hoge.bar(hoge: "hoge") == .bar(hoge: "hooge")
