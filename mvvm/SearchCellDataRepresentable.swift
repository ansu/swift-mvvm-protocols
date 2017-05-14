//
//  CellDataRepresentable.swift
//  mvvm
//
//  Created by Kuliza-282 on 14/05/17.
//  Copyright © 2017 Thomas Degry. All rights reserved.
//

import Foundation
import UIKit

protocol SearchCellDataRepresentable {
    var textLabel:String { get }
    var detailLabel:String { get }
    var rowHeight: CGFloat { get }
    
}
