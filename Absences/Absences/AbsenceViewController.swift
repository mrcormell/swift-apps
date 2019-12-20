//
//  AbsenceViewController.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

class AbsenceViewController: UITableViewController {

    var selectedDivision: Division?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return selectedDivision?.students.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Student", for: indexPath)
        cell.textLabel?.text = selectedDivision?.students[indexPath.row].surname
        return cell
    }

}

extension AbsenceViewController: DivisionSelectedDelegate {
    func divisionSelected(_ newDivision: Division) {
        selectedDivision = newDivision
        
        tableView.reloadData()
    }
    
}
