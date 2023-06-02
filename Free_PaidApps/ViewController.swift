//
//  ViewController.swift
//  Free_PaidApps
//
//  Created by Roja on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var freeapps = [FreeAppModel]()
    var paidapps = [PaidAppModel]()

    @IBOutlet weak var appsTableView: UITableView!
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        freeapps = AppDataManager.getFreeApps()
        paidapps = AppDataManager.getPaidApps()
    }


    @IBAction func segmentControllDidChange(_ sender: UISegmentedControl) {
        appsTableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentControll.selectedSegmentIndex == 0 {
            return freeapps.count
        } else {
            return paidapps.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        if segmentControll.selectedSegmentIndex == 0 {
            let freeCell = tableView.dequeueReusableCell(withIdentifier: "Freecell", for: indexPath) as? FreeAppTableViewCellCell
            let freeapp = freeapps[indexPath.row]
            freeCell?.prepareFreeApp(freeapp)
            cell = freeCell
            
        } else {
            let paidCell = tableView.dequeueReusableCell(withIdentifier: "PaidCell", for: indexPath) as? PaidAppTableViewCell
            let paidApp = paidapps[indexPath.row]
            paidCell?.preparePaidApp(paidApp)
            cell = paidCell
            
        }
        return cell ?? UITableViewCell()
    }
    
    
}
