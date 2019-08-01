//
//  MasterViewController.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    // MARK: - Properties
    var wireframe: RootWireframe!
    var mockData = ["toto", "tata", "titi", "plop"]

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mockData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCellValues.NUMBER, for: indexPath)

        cell.textLabel?.text = mockData[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        wireframe.showDetail(value: mockData[indexPath.row])
    }
}
