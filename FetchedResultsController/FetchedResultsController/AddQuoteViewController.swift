import UIKit
import CoreData

class AddQuoteViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var contentsTextView: UITextView!
    
    var managedObjectContext: NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Quote"
    }
    
    // MARK: - Actions
    
    @IBAction func save(sender: UIBarButtonItem) {
        guard let managedObjectContext = managedObjectContext else { return }
        
        // Create Quote
        let quote = Quote(context: managedObjectContext)
        
        // Configure Quote
        quote.author = authorTextField.text
        quote.contents = contentsTextView.text
        quote.createdAt = Date().timeIntervalSince1970
        
        // Pop View Controller
        _ = navigationController?.popViewController(animated: true)
    }
    
}
