//
//  EECSPointHandler.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/4/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

class EECSPointHandler {
    private var buildingPointMap = [Int: Point]()
    
    func getBuildingPointMap() -> [Int:Point] {
        return buildingPointMap
    }
    
    func getStairs(building : Int, floor : Int) -> [Point] {
        switch (building) {
        case Building.EECS:
            return [buildingPointMap[Building.roomMap.getRoomValue(room:  "stairs" + String(floor) + "1")]!, buildingPointMap[Building.roomMap.getRoomValue(room: "stairs" + String(floor) + "2")]!, buildingPointMap[Building.roomMap.getRoomValue(room: "stairs" + String(floor) + "3")]!, buildingPointMap[Building.roomMap.getRoomValue(room: "stairs" + String(floor) + "4")]!, buildingPointMap[Building.roomMap.getRoomValue(room: "stairs" + String(floor) + "5")]!]
        case Building.GGBrown:
            return []
        default:
            return []
        }
    }
    
    func initEECSBuildingPointMap(_ floor : Int) {
        switch (floor) {
        case 1:
            initEECSBuildingFloor1()
            break
        case 2:
            initEECSBuildingFloor2()
            break
        case 3:
            initEECSBuildingFloor3()
            break
        case 4:
            initEECSBuildingFloor4()
            break
        default:
            return
        }
    }
    
    private func initEECSBuildingFloor1() {
        buildingPointMap[Building.roomMap.getRoomValue(room: "1000")] = Point(x: 2500, y: 1750) // Room 1000/1001
        buildingPointMap[Building.roomMap.getRoomValue(room: "1003")] = Point(x: 2575, y: 1575) // Room 1003
        buildingPointMap[Building.roomMap.getRoomValue(room: "1005")] = Point(x: 2575, y: 1385) // Room 1005
        buildingPointMap[Building.roomMap.getRoomValue(room: "1008")] = Point(x: 2285, y: 1405) // Room 1008
        buildingPointMap[Building.roomMap.getRoomValue(room: "1012")] = Point(x: 2285, y: 1275) // Room 1012
        buildingPointMap[Building.roomMap.getRoomValue(room: "1016")] = Point(x: 2265, y: 1125) // Room 1016
        buildingPointMap[Building.roomMap.getRoomValue(room: "1222")] = Point(x: 2105, y: 1115) // Room 1222
        buildingPointMap[Building.roomMap.getRoomValue(room: "1200")] = Point(x: 2565, y: 1200) // Room 1200
        buildingPointMap[Building.roomMap.getRoomValue(room: "1222A")] = Point(x: 2125, y: 1200) // Room 1222A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1226")] = Point(x: 2105, y: 1350) // Room 1226
        buildingPointMap[Building.roomMap.getRoomValue(room: "1230")] = Point(x: 1850, y: 1310) // Room 1230
        buildingPointMap[Building.roomMap.getRoomValue(room: "1241")] = Point(x: 1500, y: 1170) // Room 1241
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1303")] = Point(x: 2565, y: 840) // Room 1303
        buildingPointMap[Building.roomMap.getRoomValue(room: "1311")] = Point(x: 2325, y: 840) // Room 1311
        buildingPointMap[Building.roomMap.getRoomValue(room: "1322")] = Point(x: 1900, y: 650) // Room 1322
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1346")] = Point(x: 1140, y: 870) // Room 1346
        buildingPointMap[Building.roomMap.getRoomValue(room: "1348")] = Point(x: 910, y: 770) // Room 1348
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1234")] = Point(x: 1650, y: 1280) // Room 1234
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1325")] = Point(x: 2120, y: 820) // Room 1325
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1333M")] = Point(x: 1790, y: 760) // Room 1333M
        buildingPointMap[Building.roomMap.getRoomValue(room: "1324W")] = Point(x: 1880, y: 760) // Room 1324W
        buildingPointMap[Building.roomMap.getRoomValue(room: "1334")] = Point(x: 1500, y: 850) // Room 1334
        buildingPointMap[Building.roomMap.getRoomValue(room: "1332")] = Point(x: 1550, y: 700) // Room 1332
        buildingPointMap[Building.roomMap.getRoomValue(room: "1400")] = Point(x: 2600, y: 600) // Room 1400
        buildingPointMap[Building.roomMap.getRoomValue(room: "1410")] = Point(x: 2300, y: 600) // Room 1410
        buildingPointMap[Building.roomMap.getRoomValue(room: "1411")] = Point(x: 2200, y: 400) // Room 1411
        buildingPointMap[Building.roomMap.getRoomValue(room: "1421")] = Point(x: 1900, y: 400) // Room 1421
        buildingPointMap[Building.roomMap.getRoomValue(room: "1427")] = Point(x: 1700, y: 400) // Room 1427
        buildingPointMap[Building.roomMap.getRoomValue(room: "1428")] = Point(x: 1725, y: 650) // Room 1428
        buildingPointMap[Building.roomMap.getRoomValue(room: "14C7")] = Point(x: 650, y: 600) // Room 14C7
        buildingPointMap[Building.roomMap.getRoomValue(room: "1500")] = Point(x: 2600, y: 300) // Room 1500
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs11")] = Point(x: 2400, y: 1500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs12")] = Point(x: 2370, y: 400) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs13")] = Point(x: 1725, y: 800) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs14")] = Point(x: 1250, y: 1200) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs15")] = Point(x: 1250, y: 400) // Stairs 5
        
    }
    
    
    private func initEECSBuildingFloor2() {
        buildingPointMap[Building.roomMap.getRoomValue(room: "2001")] = Point(x: 1250, y: 1280) // Room 2001
        buildingPointMap[Building.roomMap.getRoomValue(room: "2003")] = Point(x: 1250, y: 1050) // Room 2003
        buildingPointMap[Building.roomMap.getRoomValue(room: "2111")] = Point(x: 1000, y: 870) // Room 2111
        buildingPointMap[Building.roomMap.getRoomValue(room: "2114")] = Point(x: 1000, y: 960) // Room 2114
        buildingPointMap[Building.roomMap.getRoomValue(room: "2200")] = Point(x: 1250, y: 770) // Room 2200
        buildingPointMap[Building.roomMap.getRoomValue(room: "2210")] = Point(x: 1000, y: 800) // Room 2210
        buildingPointMap[Building.roomMap.getRoomValue(room: "2211")] = Point(x: 1000, y: 720) // Room 2211
        buildingPointMap[Building.roomMap.getRoomValue(room: "2222")] = Point(x: 800, y: 850) // Room 2222
        buildingPointMap[Building.roomMap.getRoomValue(room: "2223")] = Point(x: 700, y: 720) // Room 2223
        buildingPointMap[Building.roomMap.getRoomValue(room: "2228")] = Point(x: 570, y: 850) // Room 2228
        buildingPointMap[Building.roomMap.getRoomValue(room: "2237")] = Point(x: 450, y: 720) // Room 2237
        buildingPointMap[Building.roomMap.getRoomValue(room: "2301")] = Point(x: 1250, y: 450) // Room 2301
        buildingPointMap[Building.roomMap.getRoomValue(room: "2312")] = Point(x: 1070, y: 500) // Room 2312
        buildingPointMap[Building.roomMap.getRoomValue(room: "2327")] = Point(x: 950, y: 500) // Room 2327
        buildingPointMap[Building.roomMap.getRoomValue(room: "2332")] = Point(x: 500, y: 400) // Room 2332
        buildingPointMap[Building.roomMap.getRoomValue(room: "2340")] = Point(x: 150, y: 400) // Room 2340
        buildingPointMap[Building.roomMap.getRoomValue(room: "2341")] = Point(x: 370, y: 400) // Room 2341
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "2310")] = Point(x: 1070, y: 400) // Room 2310
        buildingPointMap[Building.roomMap.getRoomValue(room: "2401")] = Point(x: 1300, y: 150) // Room 2401
        buildingPointMap[Building.roomMap.getRoomValue(room: "2417")] = Point(x: 1000, y: 200) // Room 2417
        buildingPointMap[Building.roomMap.getRoomValue(room: "2421")] = Point(x: 600, y: 200) // Room 2421
        buildingPointMap[Building.roomMap.getRoomValue(room: "2420")] = Point(x: 950, y: 380) // Room 2420
        buildingPointMap[Building.roomMap.getRoomValue(room: "2322")] = Point(x: 800, y: 350) // Room 2322
        buildingPointMap[Building.roomMap.getRoomValue(room: "2331")] = Point(x: 660, y: 350) // Room 2331
        buildingPointMap[Building.roomMap.getRoomValue(room: "2426")] = Point(x: 710, y: 350) // Room 2426
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs21")] = Point(x: 1150, y: 1050) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs22")] = Point(x: 1150, y: 200) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs23")] = Point(x: 660, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs24")] = Point(x: 265, y: 830) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs25")] = Point(x: 265, y: 200) // Stairs 5
    }
    
    private func initEECSBuildingFloor3() {
        buildingPointMap[Building.roomMap.getRoomValue(room: "3001")] = Point(x: 500, y: 500) // Room 3001
        buildingPointMap[Building.roomMap.getRoomValue(room: "3007")] = Point(x: 500, y: 500) // Room 3007
        buildingPointMap[Building.roomMap.getRoomValue(room: "3111")] = Point(x: 500, y: 500) // Room 3111
        buildingPointMap[Building.roomMap.getRoomValue(room: "3128")] = Point(x: 500, y: 500) // Room 3128
        buildingPointMap[Building.roomMap.getRoomValue(room: "3200")] = Point(x: 500, y: 500) // Room 3200
        buildingPointMap[Building.roomMap.getRoomValue(room: "3211")] = Point(x: 500, y: 500) // Room 3211
        buildingPointMap[Building.roomMap.getRoomValue(room: "3214")] = Point(x: 500, y: 500) // Room 3214
        buildingPointMap[Building.roomMap.getRoomValue(room: "3223")] = Point(x: 500, y: 500) // Room 3223
        buildingPointMap[Building.roomMap.getRoomValue(room: "3237")] = Point(x: 500, y: 500) // Room 3237
        buildingPointMap[Building.roomMap.getRoomValue(room: "3238")] = Point(x: 500, y: 500) // Room 3238
        buildingPointMap[Building.roomMap.getRoomValue(room: "3300")] = Point(x: 500, y: 500) // Room 3300
        buildingPointMap[Building.roomMap.getRoomValue(room: "3308")] = Point(x: 500, y: 500) // Room 3008
        buildingPointMap[Building.roomMap.getRoomValue(room: "3311")] = Point(x: 500, y: 500) // Room 3311
        buildingPointMap[Building.roomMap.getRoomValue(room: "3312")] = Point(x: 500, y: 500) // Room 3312
        buildingPointMap[Building.roomMap.getRoomValue(room: "3321")] = Point(x: 500, y: 500) // Room 3321
        buildingPointMap[Building.roomMap.getRoomValue(room: "3322")] = Point(x: 500, y: 500) // Room 3322
        buildingPointMap[Building.roomMap.getRoomValue(room: "3331")] = Point(x: 500, y: 500) // Room 3331
        buildingPointMap[Building.roomMap.getRoomValue(room: "3332")] = Point(x: 500, y: 500) // Room 3332
        buildingPointMap[Building.roomMap.getRoomValue(room: "3340")] = Point(x: 500, y: 500) // Room 3340
        buildingPointMap[Building.roomMap.getRoomValue(room: "3341")] = Point(x: 500, y: 500) // Room 3341
        buildingPointMap[Building.roomMap.getRoomValue(room: "3401")] = Point(x: 500, y: 500) // Room 3401
        buildingPointMap[Building.roomMap.getRoomValue(room: "3411")] = Point(x: 500, y: 500) // Room 3411
        buildingPointMap[Building.roomMap.getRoomValue(room: "3424")] = Point(x: 500, y: 500) // Room 3424
        buildingPointMap[Building.roomMap.getRoomValue(room: "3427")] = Point(x: 500, y: 500) // Room 3427
        buildingPointMap[Building.roomMap.getRoomValue(room: "3431")] = Point(x: 500, y: 500) // Room 3431
        buildingPointMap[Building.roomMap.getRoomValue(room: "3433")] = Point(x: 500, y: 500) // Room 3433
        buildingPointMap[Building.roomMap.getRoomValue(room: "3437")] = Point(x: 500, y: 500) // Room 3437
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs31")] = Point(x: 500, y: 500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs32")] = Point(x: 500, y: 500) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs33")] = Point(x: 500, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs34")] = Point(x: 500, y: 500) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs35")] = Point(x: 500, y: 500) // Stairs 5
    }
    
    private func initEECSBuildingFloor4() {
        buildingPointMap[Building.roomMap.getRoomValue(room: "4110")] = Point(x: 500, y: 500) // Room 4110
        buildingPointMap[Building.roomMap.getRoomValue(room: "4230")] = Point(x: 500, y: 500) // Room 4230
        buildingPointMap[Building.roomMap.getRoomValue(room: "4223")] = Point(x: 500, y: 500) // Room 4223
        buildingPointMap[Building.roomMap.getRoomValue(room: "4236")] = Point(x: 500, y: 500) // Room 4236
        buildingPointMap[Building.roomMap.getRoomValue(room: "4301")] = Point(x: 500, y: 500) // Room 4301
        buildingPointMap[Building.roomMap.getRoomValue(room: "4313")] = Point(x: 500, y: 500) // Room 4313
        buildingPointMap[Building.roomMap.getRoomValue(room: "4312")] = Point(x: 500, y: 500) // Room 4312
        buildingPointMap[Building.roomMap.getRoomValue(room: "4336")] = Point(x: 500, y: 500) // Room 4336
        buildingPointMap[Building.roomMap.getRoomValue(room: "4341")] = Point(x: 500, y: 500) // Room 4341
        buildingPointMap[Building.roomMap.getRoomValue(room: "4344")] = Point(x: 500, y: 500) // Room 4344
        buildingPointMap[Building.roomMap.getRoomValue(room: "4411")] = Point(x: 500, y: 500) // Room 4411
        buildingPointMap[Building.roomMap.getRoomValue(room: "4418")] = Point(x: 500, y: 500) // Room 4418
        buildingPointMap[Building.roomMap.getRoomValue(room: "4422")] = Point(x: 500, y: 500) // Room 4422
        buildingPointMap[Building.roomMap.getRoomValue(room: "4429")] = Point(x: 500, y: 500) // Room 4429
        buildingPointMap[Building.roomMap.getRoomValue(room: "4430")] = Point(x: 500, y: 500) // Room 4430
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs41")] = Point(x: 500, y: 500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs42")] = Point(x: 500, y: 500) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs43")] = Point(x: 500, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs44")] = Point(x: 500, y: 500) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs45")] = Point(x: 500, y: 500) // Stairs 5
    }
}
