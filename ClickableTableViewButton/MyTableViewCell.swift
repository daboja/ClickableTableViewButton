//
//  MyTableViewCell.swift
//  ClickableTableViewButton
//
//  Created by Gosia Connors on 23/4/21.
//

import UIKit

protocol MyTableViewCellDelegate: AnyObject {
    func didTapButton(with title: String)

}

class MyTableViewCell: UITableViewCell {

    weak var delegate: MyTableViewCellDelegate?

    static let identifier = "MyTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    @IBOutlet var button: UIButton!
    private var title: String = ""

    @IBAction func didTapButton() {
        delegate?.didTapButton(with: title)
    }

    func configure(with title: String) {
        self.title = title
        button.setTitle(title, for: .normal)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        button.setTitleColor(.link, for: .normal)
    }
}
