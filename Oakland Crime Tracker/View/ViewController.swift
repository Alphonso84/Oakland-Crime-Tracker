//
//  ViewController.swift
//  Oakland Crime Tracker
//
//  Created by user on 11/21/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return crimeTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = crimeTitle[indexPath.row]
        cell.detailTextLabel?.text = crimeAddress[indexPath.row]
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
           
            
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
       
        
    }


}

