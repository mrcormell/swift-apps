//
//  DivisionFactory.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import Foundation

class DivisionFactory {
    
    func createDivision(code: String, of size: Int) -> Division {
        let division = Division(divisionCode: code)
        for _ in 1...size {
            let student = Student(surname: randomString(length: 10), forename: randomString(length: 7), birthday: Date.init())
            division.students.append(student)
        }
        
        return division
    }
    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
}
