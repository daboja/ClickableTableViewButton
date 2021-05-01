//
//  ViewController.swift
//  ClickableTableViewButton
//
//  Created by Gosia Connors on 23/4/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var table: UITableView!

    let data = ["First", "Second", "Third", "Forth", "Another", "One more"]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configure(with: data[indexPath.row])
        cell.delegate = self
        return cell
    }
}

extension ViewController: MyTableViewCellDelegate {
    func didTapButton(with title: String) {
        print("\(title)")
    }
}

