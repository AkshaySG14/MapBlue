//
//  RoomViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class RoomViewController: UIViewController {
    // Building label (changed programatically).
    @IBOutlet weak var buildingTitle: UILabel!
    // Back button and go button.
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var goButton: UIButton!
    // Different text fields.
    @IBOutlet weak var startRoomField: UITextField!
    @IBOutlet weak var destinationRoomField: UITextField!
    @IBOutlet weak var roomOneError: UILabel!
    @IBOutlet weak var roomTwoError: UILabel!
    // The building the controller is concerned with.
    private var building = 0;
    // The back buttton segue.
    @IBAction func GoBack(_ sender: Any) {
        performSegue(withIdentifier: "gotoBuildings", sender: sender)
    }
    
    func noErrors() -> Bool {
        var check = true
        // Checks if room 1 text is empty.
        if (startRoomField.text == "") {
            check = false
            roomOneError.text = "Please enter a starting room"
        }
        // Checks if room does not exist.
        else if (!Building.roomMap.roomExists(room: Int(startRoomField.text!)!, building: building)) {
            check = false
            roomOneError.text = "Room does not exist"
        }
        // Resets error status.
        else {
            roomOneError.text = ""
        }
        
        // Checks if room 2 text is empty.
        if (destinationRoomField.text == "") {
            check = false
            roomTwoError.text = "Please enter a destination room"
        }
        // Checks if room does not exist.
        else if (!Building.roomMap.roomExists(room: Int(destinationRoomField.text!)!, building: building)) {
            check = false
            roomTwoError.text = "Room does not exist"
        }
        // Resets error status.
        else {
            roomTwoError.text = ""
        }
        // Checks if rooms are equivalent.
        if (check && Building.roomMap.roomEquals(room1: Int(startRoomField.text!)!, room2: Int(destinationRoomField.text!)!, building: building)) {
            roomOneError.text = "Rooms are in same location"
            roomTwoError.text = "Rooms are in the same location"
        }
        // Returns check.
        return check
    }
    
    @IBAction func GoMap(_ sender: Any) {
        // Checks for any errors in room or destination text field. If none, proceed to map screen.
        if (noErrors()) {
        }
    }
    
    // Sets building to corresponding integer.
    func setBuilding(building : Int?) {
        self.building = building!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Sets label of room view controller.
        self.buildingTitle.text = "You are in " + Building.buildingMap.getBuildingName(building: building)
        // Initialize building room map.
        Building.roomMap.initBuildingRoomMap(building)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
