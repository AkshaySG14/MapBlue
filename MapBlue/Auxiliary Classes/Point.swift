//
//  Point.swift
//  MapBlue
//
//  Created by James Jiang on 3/23/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

import UIKit

class Point {
    var x : CGFloat = 0
    var y : CGFloat = 0
    var neighbors: [Point] = []
    
    init(x: CGFloat, y: CGFloat) {
        self.x = x
        self.y = y
    }
    
    func distance(a : Point, b : Point) -> CGFloat
    {
        return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2))
    }
    
    
    func nextPoint(dest : Point) -> Point
    {
        var bestPoint = neighbors[0]
        var bestDist = distance(a: neighbors[0], b: dest)
        for point in neighbors
        {
            if (distance(a: point, b: dest) <  bestDist)
            {
                bestPoint = point
                bestDist = distance(a: point, b: dest)
            }
        }
        return bestPoint
    }

}



