//
//  Division.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Division {
    var divisionCode: String
    var students: [Student] = []
    
    init(divisionCode: String) {
        self.divisionCode = divisionCode
    }
}
