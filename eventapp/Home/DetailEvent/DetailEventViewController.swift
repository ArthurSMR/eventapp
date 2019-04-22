//
//  DetailEventViewController.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 22/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var labelText: String!
    var imageV: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.img.image = imageV
        self.nameLbl.text = labelText
        // Do any additional setup after loading the view.
    }


}
