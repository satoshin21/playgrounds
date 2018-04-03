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
