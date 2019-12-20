//
//  ViewController.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class ViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard
            let leftNav = viewControllers.first as? UINavigationController,
            let divisionsViewController = leftNav.viewControllers.first as? DivisionsViewController,
            let absenceViewController = viewControllers.last as? AbsenceViewController
            else { fatalError("Couldn't set up child view controllers") }
        
        divisionsViewController.delegate = absenceViewController
        
    }


}

