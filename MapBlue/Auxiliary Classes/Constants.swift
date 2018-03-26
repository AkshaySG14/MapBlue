//
//  Variables.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 10/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//
import UIKit

// All building constants (EECS, GG Brown, etc.)
struct Building {
    static let EECS = 0
    static let GGBrown = 1
    // Map that maps each building integer to a string.
    static let buildingMap = BuildingMap()
    static let roomMap = RoomMap()
    static let pointMap = PointMap()
}

struct Point {
    var x : CGFloat = 0
    var y : CGFloat = 0
}
