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
    static let EastHall = 2
    static let Dow = 3
    // Map that maps each building integer to a string.
    static let buildingMap = BuildingMap()
    static let relay = Relay()
}
