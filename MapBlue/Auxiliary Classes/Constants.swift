//
//  Variables.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 10/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

// All building constants (EECS, GG Brown, etc.)
struct Building {
    static let EECS = 0
    static let GGBrown = 1
    // Map that maps each building integer to a string.
    static let buildingMap = BuildingMap()
    static let roomMap = RoomMap()
}

struct Point {
    var x = 0
    var y = 0
}

// All room constants
struct Room {
    struct EECS {
        
        struct floor1 {
            
        }
        
        struct floor2 {
            
        }
        
        struct floor3 {
            
        }
    }
    
    struct GGBrown {
        struct floor1 {
            
        }
        
        struct floor2 {
            
        }
        
        struct floor3 {
            
        }
    }
}
