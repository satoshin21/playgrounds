//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
//    }
//}
// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()


let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 200))
textView.textContainer.lineFragmentPadding
NSAttributedStringKey.paragraphStyle
let paragraphStyle = NSMutableParagraphStyle()
paragraphStyle.firstLineHeadIndent = 20
paragraphStyle.tailIndent = 10
paragraphStyle.headIndent = 10
let attributes: [NSAttributedStringKey: Any] = [.paragraphStyle: NSMutable]
