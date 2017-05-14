//
//  ProductDataModel.swift
//  mvvm
//
//  Created by Kuliza-282 on 14/05/17.
//  Copyright © 2017 Thomas Degry. All rights reserved.
//

import Foundation
import UIKit

class ProductDataModel: SearchCellDataRepresentable {
    
    var product: Product
    var rowHeight: CGFloat {
        return 90
    }
    var detailLabel: String {
        guard let price = product.price else {
            return "free"
        }
        
        return "$\(price)"
    }
    
    var textLabel: String {
        return product.name
    }
    init(product: Product) {
        self.product = product
    }
    
    
    
}
