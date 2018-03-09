//
//  BuildingViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 6/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class BuildingViewController: UIViewController {
    @IBOutlet weak var EECSButton: UIButton!
    @IBOutlet weak var GGButton: UIButton!
    
    let borderAlpha : CGFloat = 0.7
    let cornerRadius : CGFloat = 5.0

    func setButtonScripts(button : UIButton) {
        button.setTitle("Touched!!", for: .highlighted)
        button.setTitleColor(UIColor.red, for: .highlighted)
    }
    func setButtonBorder(button : UIButton!) {
        button.backgroundColor = UIColor.clear
        
        let topBorder = CALayer()
        topBorder.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        topBorder.borderWidth = 1;
        topBorder.frame = CGRect(x: -button.frame.width, y: -10, width: button.frame.width * 2.5, height: 1)
        button.layer.addSublayer(topBorder)
        
        let bottomBorder = CALayer()
        bottomBorder.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        bottomBorder.borderWidth = 1;
        bottomBorder.frame = CGRect(x: -button.frame.width, y: button.frame.height + 10, width: button.frame.width * 2.5, height: 1)
        button.layer.addSublayer(bottomBorder)
    }
    
    func setButtonProperties() {
        // Sets the borders.
        self.setButtonBorder(button: EECSButton)
        self.setButtonBorder(button: GGButton)
        // Sets the button scripts.
        self.setButtonScripts(button: EECSButton)
        self.setButtonScripts(button: GGButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.setButtonProperties()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
