//
//  ViewController.swift
//  GITDemo1
//
//  Created by BrainoidTech Team on 14/11/19.
//  Copyright © 2019 BrainoidTech Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var tableview: UITableView!
    
    var arr = ["ABC","XYZ","LMN"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        
        tableview.dataSource = self
        tableview.reloadData()
    }
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr[indexPath.row]
        return cell!
        
       }
       


}

