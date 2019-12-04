//
//  Storyboarded.swift
//  CoordinatorPattern
//
//  Created by David Cormell on 04/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        //load storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        //instantiate requested view controller
        return storyboard.instantiateViewController(identifier: className) as! Self
    }
}
