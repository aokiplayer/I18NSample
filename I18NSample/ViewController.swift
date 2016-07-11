import UIKit

class ViewController: UIViewController {
    
    let prefix = NSLocalizedString("prefix", comment: "")
    let postfix = NSLocalizedString("postfix", comment: "")

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func showResults(sender: UIButton) {
        defer {
            view.endEditing(true)
            inputTextField.text = ""
        }
        
        guard let text = inputTextField.text else { return }
        
        let result = prefix + text + postfix
        outputLabel.text = result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
