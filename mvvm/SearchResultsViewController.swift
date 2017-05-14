//
//  ViewController.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class SearchresultsViewController: UIViewController {
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
   
    // Init an empty cell representable array
    var data = [SearchCellDataRepresentable]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Update the title label
        if let title = title {
            titleLabel.text = "\(title) Results"
        }
    }
}

extension SearchresultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DomainCell", for: indexPath) as! SearchTableViewCell
        cell.setup(vm: data[indexPath.row])
        return cell
        
    }
}

extension SearchresultsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return data[indexPath.row].rowHeight
    }
}
