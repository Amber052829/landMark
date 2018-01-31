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
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//tableView element deletion
        if editingStyle == .delete {
            landmarkNamesArray.remove(at: indexPath.row)
            landmarkImageArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
//segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageVCSegue" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.chosenLandmarkName = landmarkNamesArray[indexPath.row]
        self.chosenLandmarkImage = landmarkImageArray[indexPath.row]
        
        performSegue(withIdentifier: "toImageVCSegue", sender: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNamesArray[indexPath.row]
        return cell
    }
   
}

