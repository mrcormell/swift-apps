//
//  DivisionsViewController.swift
//  Absences
//
//  Created by David Cormell on 17/12/2019.
//  Copyright © 2019 David Cormell. All rights reserved.
//

import UIKit

protocol DivisionSelectedDelegate: class {
    func divisionSelected(_ newDivision: Division)
}

class DivisionsViewController: UITableViewController {
    
    var divisionFactory = DivisionFactory()
    var divisions: [Division] = []
    weak var delegate: DivisionSelectedDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        addDummyData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return divisions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath)
        
        cell.textLabel?.text = divisions[indexPath.row].divisionCode
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.divisionSelected(divisions[indexPath.row])
    }
    
    func addDummyData() {
        divisions.append(divisionFactory.createDivision(code: "vBY-1", of: 8))
        
        tableView.reloadData()
    }


}
