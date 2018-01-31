//
//  ImageViewController.swift
//  LandMark Image Book
//
//  Created by Amber Sethi on 01/02/18.
//  Copyright © 2018 Amber Sethi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
   
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedLandmarkImage
        nameLabel.text = selectedLandmarkName
        
        // Do any additional setup after loading the view.
    }


}
