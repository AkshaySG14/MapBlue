//
//  MapViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 14/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class PrimaryMapViewController: MapViewController {
    // The primary map view controller could need to pass on a second floor.
    var secondFloor = -1
    
    // Sets relevant variables. This is when the start and end floor are different.
    func initialize(building : Int, floor1 : Int, floor2: Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor1
        self.secondFloor = floor2
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    // Set position of the markers.
    override func setMarkerPositions() {
        // Gets the point map.
        let pointMap = Building.pointMap.getBuildingPointMap()
        // Sets the starting location of each indicator (start and end).
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
}
