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
    var viewModel: MasterViewModel!
    var numberList: [Number] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numberList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCellValues.NUMBER, for: indexPath) as! MasterTableViewCell

        cell.populate(with: numberList[indexPath.row])

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        wireframe.showDetail(value: numberList[indexPath.row].name)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}


private extension MasterViewController {
    func loadData() {
        viewModel.retrieveNumberList { (result, error) in
            guard error == nil else {
                print(error!)
                return
            }
            
            guard let result = result else {
                return
            }
            
            DispatchQueue.main.async { [weak self] in
                
                guard let strongSelf = self else {
                    return
                }
                strongSelf.numberList = result
                strongSelf.tableView.reloadData()
                strongSelf.tableView(strongSelf.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
            }
        }
    }
}
