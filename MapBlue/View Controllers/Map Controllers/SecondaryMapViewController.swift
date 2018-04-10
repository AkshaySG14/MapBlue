//
//  MapViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 14/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

// Dummy class used to distinguish map views.
class SecondaryMapViewController: MapViewController {
    var firstFloor = 0
    var floorStart = ""
    // Sends data to the next view (Secondary Map Controller View).
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToPrimaryView" {
            // Gets destination view controller as Secondary Map View controller and uses the set building function.
            if let destinationVC = segue.destination as? PrimaryMapViewController {
                destinationVC.initialize(building : building, floor1 : self.firstFloor, floor2: self.floor, startRoom: self.floorStart, destRoom: self.destRoom)
            }
        }
    }
    
    // Sets relevant variables. This is so that when the user presses back, all the relevant information can be transferred to the primary map view controller..
    func initialize(building : Int, floor1 : Int, floor2 : Int, startRoom : String, destRoom : String, floorStart : String) {
        self.building = building
        self.firstFloor = floor1
        self.floor = floor2
        self.startRoom = startRoom
        self.destRoom = destRoom
        // This is the room the user is in.
        self.floorStart = floorStart
    }
}


