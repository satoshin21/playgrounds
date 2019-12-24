

import PlaygroundSupport
import UIKit

let stackView = UIStackView(frame: CGRect(origin: .zero, size: .init(width: 200, height: 400)))

stackView.alignment = .leading
stackView.axis = .vertical
stackView.backgroundColor = .white
stackView.distribution = .fill
stackView.spacing = 20


let label1 = UILabel()
label1.text = "11111111"
label1.textColor = .blue
label1.backgroundColor = .yellow
stackView.addArrangedSubview(label1)

let label2 = UILabel()
label2.text = "22222222"
label2.textColor = .blue
label2.backgroundColor = .yellow
stackView.addArrangedSubview(label2)

let label3 = UILabel()
label3.text = "33333333"
label3.textColor = .blue
label3.backgroundColor = .yellow
stackView.addArrangedSubview(label3)

label2.isHidden = true
PlaygroundPage.current.liveView = stackView

let tableView = UITableView(frame: CGRect(origin: .zero, size: .init(width: 320, height: 500)))

PlaygroundPage.current.liveView = tableView
