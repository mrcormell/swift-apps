//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by David Cormell on 04/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    var coordinator: BuyCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //used in simple cases to handle going back
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//        
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
