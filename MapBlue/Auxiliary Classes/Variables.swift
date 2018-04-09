//
//  Variables.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 12/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

// Gets the appropriate map name for the image.
func getImage(building : Int, floor: Int) -> String {
    switch (building) {
    case Building.EECS:
        switch (floor) {
        case 1:
            return "EECSFirstFloor.png"
        case 2:
            return "EECSSecondFloor.png"
        case 3:
            return "EECSThirdFloor.png"
        case 4:
            return "EECSFourthFloor.png"
        default:
            return ""
        }
    case Building.GGBrown:
        return ""
    case Building.EastHall:
        return ""
    case Building.Dow:
        return ""
    default:
        return ""
    }
}

// Silly workaround because += operator returns a void in Swift.
func incrementNum(count : inout Int) -> Int {
    count += 1
    return count
}

class BuildingMap {
    private var buildingMap = [Int: String]()
    
    init() {
        buildingMap[Building.EECS] = "EECS Building"
        buildingMap[Building.GGBrown] = "G. G. Brown"
        buildingMap[Building.EastHall] = "East Hall"
        buildingMap[Building.Dow] = "Dow Building"
    }
    
    func getBuildingName(building : Int) -> String {
        return buildingMap[building]!
    }
    
}

// Relays all handler information.
class Relay {
    var eHandler = EECSHandler()
    
    private func getCurrentHandler(_ building : Int) -> Handler {
        switch (building) {
        case Building.EECS:
            return eHandler
        default:
            return eHandler
        }
    }
    
    // Init functions.
    func initNodes(building : Int, floor : Int) {
        getCurrentHandler(building).initNodes(floor)
    }
    
    func initRooms(_ building : Int) {
        getCurrentHandler(building).initRooms()
    }
    
    func initPoints(building : Int, floor : Int) {
        getCurrentHandler(building).initPoints(building: building, floor: floor)
    }
    
    // Get functions.
    func getRoomMap(_ building : Int) -> [String:Int] {
        return getCurrentHandler(building).getRoomMap()
    }
    
    func getNodes(_ building : Int) -> [Point] {
        return getCurrentHandler(building).getNodes()
    }
    
    func getPointMap(_ building : Int) -> [Int:Point] {
        return getCurrentHandler(building).getPointMap()
    }
    
    // Point Map functions.
    // Get stairs function.
    func getStairs(building : Int, floor : Int) -> [Point] {
        return getCurrentHandler(building).getStairs(building : building, floor: floor)
    }
    
    // Get nearest node function.
    func getNearestNode(building : Int, point : Point, nodes : [Point]) -> Point {
        return getCurrentHandler(building).getNearestNode(point: point, nodes: nodes)
    }
    
    // Room Map functions.
    func roomExists(building : Int, room : String) -> Bool {
        return getCurrentHandler(building).roomExists(room)
    }
    
    func roomEquals(building : Int, room1 : String, room2 : String) -> Bool {
        return getCurrentHandler(building).roomEquals(room1: room1, room2: room2)
    }
    
    func getRoomValue(building : Int, room : String) -> Int {
        return getCurrentHandler(building).getRoomValue(room)
    }
    
    // Node functions
    func addMutualNeighbors(building: Int, one : Point, two : Point) {
        getCurrentHandler(building).addMutualNeighbors(one: one, two: two)
    }
}


