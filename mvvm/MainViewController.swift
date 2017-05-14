//
//  MainViewController.swift
//  mvvm
//
//  Created by Thomas Degry on 12/16/16.
//  Copyright © 2016 Thomas Degry. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add VC's
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Generate the ProductVC and some products
        let productsVC = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! SearchresultsViewController
        productsVC.title = "Products"
        productsVC.data = [
            ProductDataModel(product: Product(name: "Preflight Airport Parking", rating: 2.0, price: nil)),
            ProductDataModel(product: Product(name: "Adobe Experience Manager", rating: 4.0, price: nil)),
            ProductDataModel(product: Product(name: "RedBull Flugtag Pre-Flight", rating: 3.0, price: nil)),
            ProductDataModel(product: Product(name: "PreFlight", rating: 2.0, price: 4.99)),
            ProductDataModel(product: Product(name: "PAW Patrol pups Take Flight", rating: 2.0, price: 2.99))
        ]
        
        // Generate the DomainsVC and some domains
        let domainsVC = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! SearchresultsViewController
        domainsVC.title = "Domains"
        domainsVC.data = [
            DomainDataModel(domain: Domain(domainName: "facebook.com", domainStatus: .Taken)),
            DomainDataModel(domain: Domain(domainName: "facebook.org", domainStatus: .Available)),
            DomainDataModel(domain: Domain(domainName: "facebook.net", domainStatus: .Available)),
            DomainDataModel(domain: Domain(domainName: "facebook.edu", domainStatus: .Other)),
        ]
        
        // Set the created VCs as the view controllers for our tabbar
        self.setViewControllers([productsVC, domainsVC], animated: false)
    }
    
}
