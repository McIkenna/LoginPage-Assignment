//
//  SecondViewController.swift
//  LoginPage
//
//  Created by New Account on 10/15/21.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {

    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var itemsOnTable = [
        "Amazon",
        "Walmart",
        "Target",
        "Costco",
        "Ebay",
        "Best buy",
        "Fry's",
        "Macy's",
        "JC Penny"
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableViewCell")
        myTableView.dataSource = self
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemsOnTable.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = self.itemsOnTable[indexPath.row]

        return cell
    }
    
   

}
