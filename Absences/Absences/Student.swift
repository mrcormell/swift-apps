//
//  Student.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class Student {
    var surname: String
    var forename: String
    var birthday: Date
    
    init(surname: String, forename: String, birthday: Date) {
        self.surname = surname
        self.forename = forename
        self.birthday = birthday
    }
    
}
