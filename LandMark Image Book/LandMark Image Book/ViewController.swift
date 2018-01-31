//
//  ViewController.swift
//  LandMark Image Book
//
//  Created by Amber Sethi on 29/01/18.
//  Copyright © 2018 Amber Sethi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNamesArray = [String]()
    var landmarkImageArray = [UIImage]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//tableview setup
        tableView.dataSource = self
        tableView.delegate = self
        
//example array creation
        landmarkNamesArray.append("Colosseum")
        landmarkNamesArray.append("Great Wall")
        landmarkNamesArray.append("Kremlin")
        landmarkNamesArray.append("Stonehenge")
        landmarkNamesArray.append("Taj Mahal")
        
        landmarkImageArray.append(UIImage(named:"colosseum.jpg")!)
        landmarkImageArray.append(UIImage(named:"great wall.jpg")!)
        landmarkImageArray.append(UIImage(named:"kremlin.jpg")!)
        landmarkImageArray.append(UIImage(named:"stonehenge.jpg")!)
        landmarkImageArray.append(UIImage(named:"Taj mahal.jpg")!)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNamesArray[indexPath.row]
        return cell
    }
   
}

