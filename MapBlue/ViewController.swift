//
//  ViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 5/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var EECSButton: UIButton!
    let borderAlpha : CGFloat = 0.7
    let cornerRadius : CGFloat = 5.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.EECSButton.backgroundColor = UIColor.clear
        self.EECSButton.layer.borderWidth = 1.0
        self.EECSButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        self.EECSButton.layer.cornerRadius = cornerRadius
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class BuildingViewController : ViewController {
    
}

