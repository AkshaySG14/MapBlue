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
    private var building = 0
    // Sends data to the next view (Map Controller View).
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoMap" {
            // Gets destination view controller as roomview controller and uses the set building function.
            if let destinationVC = segue.destination as? MapViewController {
                // Forcibly casts the sender to UI button to set the building properly.
                destinationVC.initialize(building : building, floor : self.getFloor(), startRoom: self.startRoomField.text!, destRoom: self.destinationRoomField.text!)
            }
        }
    }
    
    // Gets first digit of the room (which is essentially the floor).
    func getFloor() -> Int {
        return Int(self.startRoomField.text![0..<1])!
    }
    
    func noErrors() -> Bool {
        var check = true
        // Checks if room 1 text is empty.
        if (startRoomField.text == "") {
            check = false
            roomOneError.text = "Please enter a starting room"
        }
        // Checks if room does not exist.
        else if (!Building.roomMap.roomExists(room: startRoomField.text!)) {
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
        else if (!Building.roomMap.roomExists(room: destinationRoomField.text!)) {
            check = false
            roomTwoError.text = "Room does not exist"
        }
        // Resets error status.
        else {
            roomTwoError.text = ""
        }
        // Checks if rooms are equivalent.
        if (check && Building.roomMap.getRoomValue(room: startRoomField.text!) == Building.roomMap.getRoomValue(room: destinationRoomField.text!)) {
            check = false
            roomOneError.text = "Rooms are in same location"
            roomTwoError.text = "Rooms are in the same location"
        }
        // Returns check.
        return check
    }
    
    @IBAction func GoMap(_ sender: Any) {
        // Checks for any errors in room or destination text field. If none, proceed to map screen.
        if (noErrors()) {
            performSegue(withIdentifier: "gotoMap", sender: sender)
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

extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}
