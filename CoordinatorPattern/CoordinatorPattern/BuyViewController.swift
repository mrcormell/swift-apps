//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by David Cormell on 04/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    var coordinator: MainCoordinator?
    var selectedProduct = 0
    
    @IBOutlet var productToBuy: UILabel!
    
    @IBAction func buyProduct(_ sender: Any) {
        coordinator?.buyProduct()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productToBuy.text = "Buy: \(selectedProduct)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
