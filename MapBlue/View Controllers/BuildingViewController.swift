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
    
    // Sets the building according to the button.
    func getBuilding(_ sender: UIButton) -> Int {
        switch (sender) {
        case EECSButton:
            return Building.EECS
        case GGButton:
            return Building.GGBrown
        default:
            return -1
        }
    }
    
    // Sends data to the next view (Room Controller View).
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoRooms" {
            // Gets destination view controller as roomview controller and uses the set building function.
            if let destinationVC = segue.destination as? RoomViewController {
                // Forcibly casts the sender to UI button to set the building properly.
                destinationVC.setBuilding(building: getBuilding((sender as? UIButton)!))
            }
        }
    }
    
    // Button segue for the GG Brown Button.
    @IBAction func GGBgotoRooms(_ sender: UIButton) {
        performSegue(withIdentifier: "gotoRooms", sender: sender)
    }
    
    // Button segue for the EECS Building Button.
    @IBAction func EECSgotoRooms(_ sender: UIButton) {
         performSegue(withIdentifier: "gotoRooms", sender: sender)
    }
    
    
    func setButtonBorder(button : UIButton) {
        // Sets the background to clear.
        button.backgroundColor = UIColor.clear
        // Creates a top border for the button.
        let topBorder = CALayer()
        // Sets the color, thickness, and position/dimensions.
        topBorder.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        topBorder.borderWidth = 1;
        topBorder.frame = CGRect(x: -button.frame.width, y: -10, width: button.frame.width * 2.5, height: 1)
        button.layer.addSublayer(topBorder)
        // Same but for the buttom border.
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
