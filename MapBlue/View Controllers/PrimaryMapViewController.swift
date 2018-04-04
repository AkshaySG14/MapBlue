//
//  MapViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 14/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class PrimaryMapViewController: MapViewController {
    // Nextmap button.
    @IBOutlet weak var nextMap: UIButton!
    // The primary map view controller could need to pass on a second floor.
    var secondFloor = -1
    
    // Sends data to the next view (Secondary Map Controller View).
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoSecondaryMap" {
            // Gets destination view controller as Secondary Map View controller and uses the set building function.
            if let destinationVC = segue.destination as? SecondaryMapViewController {
                destinationVC.initialize(building : building, floor1: self.floor, floor2 : self.secondFloor, startRoom: self.getStairsName(), destRoom: self.destRoom, floorStart: self.startRoom)
            }
        }
    }
    
    // Sets relevant variables. This is when the start and end floor are different.
    func initialize(building : Int, floor1 : Int, floor2: Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor1
        self.secondFloor = floor2
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    // Gets the name of the stairs to pass to the secondary map view controller.
    func getStairsName() -> String {
        let pointMap = Building.pointMap.getBuildingPointMap()
        let stairList = Building.pointMap.getStairs(self.building)
        // Loops through stairs until appropriate stairs is found for destination point.
        for index in 1...stairList.count {
            if (self.destPoint == pointMap[Building.roomMap.getRoomValue(room: "stairs" + String(index))]!) {
                return "stairs" + String(index)
            }
        }
        return ""
    }
    
    // Enables the second map button.
    func enableSecondMapButton() {
        nextMap.isEnabled = true
        nextMap.setTitle("Go to Floor " + String(self.secondFloor) + " Map", for: .normal)
        nextMap.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
    }
    
    // Set position of the markers.
    override func setMarkerPositions() {
        // Gets the point map.
        let pointMap = Building.pointMap.getBuildingPointMap()
        // Sets the starting location of each indicator (start and end).
        print(startRoom)
        self.startPoint = pointMap[Building.roomMap.getRoomValue(room: startRoom)]!
        // If on the same floor, set as ending point normally, else get the stairs position.
        if (self.secondFloor == -1) {
            self.destPoint = pointMap[Building.roomMap.getRoomValue(room: destRoom)]!
        }
        else {
            // Creates list of stairs.
            let stairList = Building.pointMap.getStairs(self.building)
            self.destPoint = Building.pointList.getNearestNode(point: self.startPoint, nodes: stairList)
        }
        
        self.startIndicatorImageLeading.constant = startPoint.x
        self.startIndicatorImageTop.constant = startPoint.y
        
        self.destIndicatorImageLeading.constant = destPoint.x
        self.destIndicatorImageTop.constant = destPoint.y - destIndicatorImage.frame.height / 2
        self.view.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // If second room exists, enable button.
        if (self.secondFloor != -1) {
            enableSecondMapButton()
        }
    }
}

