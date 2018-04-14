//
//  EECSPointHandler.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/4/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

import UIKit

class EECSPointHandler {
    private var pointMap = [Int: Point]()
    
    func initPointMap(building : Int, floor : Int) {
        // Clears point map.
        pointMap.removeAll()
        
        switch (floor) {
        case 1:
            initEECSBuildingFloor1(building)
            break
        case 2:
            initEECSBuildingFloor2(building)
            break
        case 3:
            initEECSBuildingFloor3(building)
            break
        case 4:
            initEECSBuildingFloor4(building)
            break
        default:
            return
        }
    }

    func getPointMap() -> [Int:Point] {
        return pointMap
    }
    
    func getStairs(building : Int, floor : Int) -> [Point] {
        switch (building) {
        case Building.EECS:
            return [pointMap[Building.relay.getRoomValue(building: building, room:  "stairs" + String(floor) + "1")]!, pointMap[Building.relay.getRoomValue(building: building, room: "stairs" + String(floor) + "2")]!, pointMap[Building.relay.getRoomValue(building: building, room: "stairs" + String(floor) + "3")]!, pointMap[Building.relay.getRoomValue(building: building, room: "stairs" + String(floor) + "4")]!, pointMap[Building.relay.getRoomValue(building: building, room: "stairs" + String(floor) + "5")]!]
        case Building.GGBrown:
            return []
        default:
            return []
        }
    }
    
    func getNearestNode(point : Point, nodes : [Point]) -> Point {
        var min : CGFloat = Point.getDistance(a: point, b: nodes[0])
        var nearestPoint : Point = nodes[0]
        for node in nodes {
            let distance = Point.getDistance(a: point, b: node)
            if (distance < min) {
                min = distance
                nearestPoint = node
            }
        }
        return nearestPoint
    }
    
    private func initEECSBuildingFloor1(_ building : Int) {
        pointMap[Building.relay.getRoomValue(building: building, room: "1000")] = Point(x: 2500, y: 1750) // Room 1000/1001
        pointMap[Building.relay.getRoomValue(building: building, room: "1003")] = Point(x: 2575, y: 1575) // Room 1003
        pointMap[Building.relay.getRoomValue(building: building, room: "1005")] = Point(x: 2575, y: 1385) // Room 1005
        pointMap[Building.relay.getRoomValue(building: building, room: "1008")] = Point(x: 2285, y: 1405) // Room 1008
        pointMap[Building.relay.getRoomValue(building: building, room: "1012")] = Point(x: 2285, y: 1275) // Room 1012
        pointMap[Building.relay.getRoomValue(building: building, room: "1016")] = Point(x: 2265, y: 1125) // Room 1016
        pointMap[Building.relay.getRoomValue(building: building, room: "1222")] = Point(x: 2105, y: 1115) // Room 1222
        pointMap[Building.relay.getRoomValue(building: building, room: "1200")] = Point(x: 2565, y: 1200) // Room 1200
        pointMap[Building.relay.getRoomValue(building: building, room: "1222A")] = Point(x: 2125, y: 1200) // Room 1222A
        pointMap[Building.relay.getRoomValue(building: building, room: "1226")] = Point(x: 2105, y: 1350) // Room 1226
        pointMap[Building.relay.getRoomValue(building: building, room: "1230")] = Point(x: 1850, y: 1310) // Room 1230
        pointMap[Building.relay.getRoomValue(building: building, room: "1241")] = Point(x: 1500, y: 1170) // Room 1241
        
        pointMap[Building.relay.getRoomValue(building: building, room: "1303")] = Point(x: 2565, y: 840) // Room 1303
        pointMap[Building.relay.getRoomValue(building: building, room: "1311")] = Point(x: 2325, y: 840) // Room 1311
        pointMap[Building.relay.getRoomValue(building: building, room: "1322")] = Point(x: 1900, y: 650) // Room 1322
        
        pointMap[Building.relay.getRoomValue(building: building, room: "1346")] = Point(x: 1140, y: 870) // Room 1346
        pointMap[Building.relay.getRoomValue(building: building, room: "1348")] = Point(x: 910, y: 770) // Room 1348
        
        pointMap[Building.relay.getRoomValue(building: building, room: "1234")] = Point(x: 1650, y: 1280) // Room 1234
        
        pointMap[Building.relay.getRoomValue(building: building, room: "1325")] = Point(x: 2120, y: 820) // Room 1325
        
        pointMap[Building.relay.getRoomValue(building: building, room: "1333M")] = Point(x: 1790, y: 760) // Room 1333M
        pointMap[Building.relay.getRoomValue(building: building, room: "1324W")] = Point(x: 1880, y: 760) // Room 1324W
        pointMap[Building.relay.getRoomValue(building: building, room: "1334")] = Point(x: 1500, y: 850) // Room 1334
        pointMap[Building.relay.getRoomValue(building: building, room: "1332")] = Point(x: 1550, y: 700) // Room 1332
        pointMap[Building.relay.getRoomValue(building: building, room: "1400")] = Point(x: 2600, y: 600) // Room 1400
        pointMap[Building.relay.getRoomValue(building: building, room: "1410")] = Point(x: 2300, y: 600) // Room 1410
        pointMap[Building.relay.getRoomValue(building: building, room: "1411")] = Point(x: 2200, y: 400) // Room 1411
        pointMap[Building.relay.getRoomValue(building: building, room: "1421")] = Point(x: 1900, y: 400) // Room 1421
        pointMap[Building.relay.getRoomValue(building: building, room: "1427")] = Point(x: 1700, y: 400) // Room 1427
        pointMap[Building.relay.getRoomValue(building: building, room: "1428")] = Point(x: 1725, y: 650) // Room 1428
        pointMap[Building.relay.getRoomValue(building: building, room: "14C7")] = Point(x: 650, y: 600) // Room 14C7
        pointMap[Building.relay.getRoomValue(building: building, room: "1500")] = Point(x: 2600, y: 300) // Room 1500
        
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs11")] = Point(x: 2400, y: 1500) // Stairs 1
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs12")] = Point(x: 2370, y: 400) // Stairs 2
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs13")] = Point(x: 1725, y: 800) // Stairs 3
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs14")] = Point(x: 1250, y: 1200) // Stairs 4
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs15")] = Point(x: 1250, y: 400) // Stairs 5
        
    }
    
    
    private func initEECSBuildingFloor2(_ building : Int) {
        pointMap[Building.relay.getRoomValue(building: building, room: "2001")] = Point(x: 1250, y: 1280) // Room 2001
        pointMap[Building.relay.getRoomValue(building: building, room: "2003")] = Point(x: 1250, y: 1050) // Room 2003
        pointMap[Building.relay.getRoomValue(building: building, room: "2111")] = Point(x: 1000, y: 870) // Room 2111
        pointMap[Building.relay.getRoomValue(building: building, room: "2114")] = Point(x: 1000, y: 960) // Room 2114
        pointMap[Building.relay.getRoomValue(building: building, room: "2200")] = Point(x: 1250, y: 770) // Room 2200
        pointMap[Building.relay.getRoomValue(building: building, room: "2210")] = Point(x: 1000, y: 800) // Room 2210
        pointMap[Building.relay.getRoomValue(building: building, room: "2211")] = Point(x: 1000, y: 720) // Room 2211
        pointMap[Building.relay.getRoomValue(building: building, room: "2222")] = Point(x: 800, y: 850) // Room 2222
        pointMap[Building.relay.getRoomValue(building: building, room: "2223")] = Point(x: 700, y: 720) // Room 2223
        pointMap[Building.relay.getRoomValue(building: building, room: "2228")] = Point(x: 570, y: 850) // Room 2228
        pointMap[Building.relay.getRoomValue(building: building, room: "2237")] = Point(x: 450, y: 720) // Room 2237
        pointMap[Building.relay.getRoomValue(building: building, room: "2301")] = Point(x: 1250, y: 450) // Room 2301
        pointMap[Building.relay.getRoomValue(building: building, room: "2312")] = Point(x: 1070, y: 500) // Room 2312
        pointMap[Building.relay.getRoomValue(building: building, room: "2327")] = Point(x: 950, y: 500) // Room 2327
        pointMap[Building.relay.getRoomValue(building: building, room: "2332")] = Point(x: 500, y: 400) // Room 2332
        pointMap[Building.relay.getRoomValue(building: building, room: "2340")] = Point(x: 150, y: 400) // Room 2340
        pointMap[Building.relay.getRoomValue(building: building, room: "2341")] = Point(x: 370, y: 400) // Room 2341
        
        pointMap[Building.relay.getRoomValue(building: building, room: "2310")] = Point(x: 1070, y: 400) // Room 2310
        pointMap[Building.relay.getRoomValue(building: building, room: "2401")] = Point(x: 1300, y: 150) // Room 2401
        pointMap[Building.relay.getRoomValue(building: building, room: "2417")] = Point(x: 1000, y: 200) // Room 2417
        pointMap[Building.relay.getRoomValue(building: building, room: "2421")] = Point(x: 600, y: 200) // Room 2421
        pointMap[Building.relay.getRoomValue(building: building, room: "2420")] = Point(x: 950, y: 380) // Room 2420
        pointMap[Building.relay.getRoomValue(building: building, room: "2322")] = Point(x: 800, y: 350) // Room 2322
        pointMap[Building.relay.getRoomValue(building: building, room: "2331")] = Point(x: 660, y: 350) // Room 2331
        pointMap[Building.relay.getRoomValue(building: building, room: "2426")] = Point(x: 710, y: 350) // Room 2426
        
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs21")] = Point(x: 1150, y: 1050) // Stairs 1
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs22")] = Point(x: 1150, y: 200) // Stairs 2
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs23")] = Point(x: 660, y: 500) // Stairs 3
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs24")] = Point(x: 265, y: 830) // Stairs 4
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs25")] = Point(x: 265, y: 200) // Stairs 5
    }
    
    private func initEECSBuildingFloor3(_ building : Int) {
        pointMap[Building.relay.getRoomValue(building: building, room: "3001")] = Point(x: 1500, y: 1000) // Room 3001
        pointMap[Building.relay.getRoomValue(building: building, room: "3007")] = Point(x: 1500, y: 750) // Room 3007
        pointMap[Building.relay.getRoomValue(building: building, room: "3111")] = Point(x: 1200, y: 780) // Room 3111
        pointMap[Building.relay.getRoomValue(building: building, room: "3128")] = Point(x: 900, y: 780) // Room 3128
        pointMap[Building.relay.getRoomValue(building: building, room: "3200")] = Point(x: 1500, y: 650) // Room 3200
        pointMap[Building.relay.getRoomValue(building: building, room: "3211")] = Point(x: 1200, y: 610) // Room 3211
        pointMap[Building.relay.getRoomValue(building: building, room: "3214")] = Point(x: 1200, y: 720) // Room 3214
        pointMap[Building.relay.getRoomValue(building: building, room: "3223")] = Point(x: 850, y: 610) // Room 3223
        pointMap[Building.relay.getRoomValue(building: building, room: "3237")] = Point(x: 500, y: 610) // Room 3237
        pointMap[Building.relay.getRoomValue(building: building, room: "3238")] = Point(x: 500, y: 710) // Room 3238
        pointMap[Building.relay.getRoomValue(building: building, room: "3300")] = Point(x: 1500, y: 420) // Room 3300
        pointMap[Building.relay.getRoomValue(building: building, room: "3308")] = Point(x: 1600, y: 250) // Room 3008
        pointMap[Building.relay.getRoomValue(building: building, room: "3311")] = Point(x: 1450, y: 250) // Room 3311
        pointMap[Building.relay.getRoomValue(building: building, room: "3312")] = Point(x: 1250, y: 300) // Room 3312
        pointMap[Building.relay.getRoomValue(building: building, room: "3321")] = Point(x: 1080, y: 300) // Room 3321
        pointMap[Building.relay.getRoomValue(building: building, room: "3322")] = Point(x: 900, y: 250) // Room 3322
        pointMap[Building.relay.getRoomValue(building: building, room: "3331")] = Point(x: 740, y: 250) // Room 3331
        pointMap[Building.relay.getRoomValue(building: building, room: "3332")] = Point(x: 550, y: 300) // Room 3332
        pointMap[Building.relay.getRoomValue(building: building, room: "3340")] = Point(x: 150, y: 300) // Room 3340
        pointMap[Building.relay.getRoomValue(building: building, room: "3341")] = Point(x: 400, y: 300) // Room 3341
        pointMap[Building.relay.getRoomValue(building: building, room: "3401")] = Point(x: 1550, y: 100) // Room 3401
        pointMap[Building.relay.getRoomValue(building: building, room: "3411")] = Point(x: 1100, y: 100) // Room 3411
        pointMap[Building.relay.getRoomValue(building: building, room: "3424")] = Point(x: 810, y: 250) // Room 3424
        pointMap[Building.relay.getRoomValue(building: building, room: "3427")] = Point(x: 750, y: 100) // Room 3427
        pointMap[Building.relay.getRoomValue(building: building, room: "3431")] = Point(x: 650, y: 100) // Room 3431
        pointMap[Building.relay.getRoomValue(building: building, room: "3433")] = Point(x: 550, y: 100) // Room 3433
        pointMap[Building.relay.getRoomValue(building: building, room: "3437")] = Point(x: 400, y: 100) // Room 3437
        
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs31")] = Point(x: 1320, y: 950) // Stairs 1
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs32")] = Point(x: 1320, y: 100) // Stairs 2
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs33")] = Point(x: 740, y: 400) // Stairs 3
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs34")] = Point(x: 300, y: 710) // Stairs 4
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs35")] = Point(x: 300, y: 100) // Stairs 5
    }
    
    private func initEECSBuildingFloor4(_ building : Int) {
        pointMap[Building.relay.getRoomValue(building: building, room: "4110")] = Point(x: 1250, y: 1100) // Room 4110
        pointMap[Building.relay.getRoomValue(building: building, room: "4230")] = Point(x: 900, y: 950) // Room 4230
        pointMap[Building.relay.getRoomValue(building: building, room: "4223")] = Point(x: 900, y: 800) // Room 4223
        pointMap[Building.relay.getRoomValue(building: building, room: "4236")] = Point(x: 550, y: 875) // Room 4236
        pointMap[Building.relay.getRoomValue(building: building, room: "4301")] = Point(x: 1800, y: 350) // Room 4301
        pointMap[Building.relay.getRoomValue(building: building, room: "4313")] = Point(x: 1600, y: 350) // Room 4313
        pointMap[Building.relay.getRoomValue(building: building, room: "4312")] = Point(x: 1350, y: 350) // Room 4312
        pointMap[Building.relay.getRoomValue(building: building, room: "4336")] = Point(x: 550, y: 530) // Room 4336
        pointMap[Building.relay.getRoomValue(building: building, room: "4341")] = Point(x: 450, y: 375) // Room 4341
        pointMap[Building.relay.getRoomValue(building: building, room: "4344")] = Point(x: 150, y: 350) // Room 4344
        pointMap[Building.relay.getRoomValue(building: building, room: "4411")] = Point(x: 1300, y: 130) // Room 4411
        pointMap[Building.relay.getRoomValue(building: building, room: "4418")] = Point(x: 1200, y: 350) // Room 4418
        pointMap[Building.relay.getRoomValue(building: building, room: "4422")] = Point(x: 940, y: 300) // Room 4422
        pointMap[Building.relay.getRoomValue(building: building, room: "4429")] = Point(x: 550, y: 130) // Room 4429
        pointMap[Building.relay.getRoomValue(building: building, room: "4430")] = Point(x: 500, y: 270) // Room 4430
        
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs41")] = Point(x: 1470, y: 1200) // Stairs 1
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs42")] = Point(x: 1470, y: 100) // Stairs 2
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs43")] = Point(x: 850, y: 530) // Stairs 3
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs44")] = Point(x: 340, y: 900) // Stairs 4
        pointMap[Building.relay.getRoomValue(building: building, room: "stairs45")] = Point(x: 340, y: 100) // Stairs 5
    }
}
