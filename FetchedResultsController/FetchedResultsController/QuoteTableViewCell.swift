import UIKit

class QuoteTableViewCell: UITableViewCell {

    // MARK: - Properties

    static let reuseIdentifier = "QuoteCell"

    // MARK: -

    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var contentsLabel: UILabel!

    // MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
