//
//  DomainTableViewCell.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    func setup(vm: SearchCellDataRepresentable) {
        self.textLabel?.text = vm.textLabel
        self.detailTextLabel?.text = vm.detailLabel
    }
}
