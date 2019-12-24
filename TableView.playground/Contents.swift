//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

final class StackViewCell: UITableViewCell {
    
    private let stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MyViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(StackViewCell.self, forCellReuseIdentifier: "Cell")
        
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! StackViewCell
        return cell
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
