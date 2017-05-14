//
//  DomainDataModel.swift
//  mvvm
//
//  Created by Kuliza-282 on 14/05/17.
//  Copyright © 2017 Thomas Degry. All rights reserved.
//

import Foundation
import UIKit


class DomainDataModel: SearchCellDataRepresentable {
    
    var domain: Domain
    var rowHeight: CGFloat {
        return 60
    }
    var textLabel: String {
        switch domain.domainStatus {
        case .Available:
            return "Available"
        case .Taken:
            return "Taken"
        case .Other:
            return "Other"
        }
    }
    
    var detailLabel: String {
        return domain.domainName
    }
    
    init(domain: Domain) {
        self.domain = domain
    }
    
    
}
