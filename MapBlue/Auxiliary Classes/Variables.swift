//
//  Variables.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 12/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//



// Silly workaround because += operator returns a void in Swift.
func incrementNum(count : inout Int) -> Int {
    count += 1
    return count
}

class BuildingMap {
    private var buildingMap = [Int: String]()
    
    init() {
        buildingMap[Building.EECS] = "The EECS Building"
        buildingMap[Building.GGBrown] = "G. G. Brown"
    }
    
    func getBuildingName(building : Int) -> String {
        return buildingMap[building]!
    }
    
}


class PointList {
    private var buildingNodes: [Point] = []
    
    func getPointNodes() -> [Point] {
        return buildingNodes
    }

    func initPointNodes(building : Int, floor : Int) {
        switch (building) {
        case Building.GGBrown:
            initGGBrownPointNodes(floor)
            break
        case Building.EECS:
            initEECSPointNodes(floor)
            break
        default:
            break
        }
    }
    
    private  func initEECSBuildingFloor1() {
        
    }
    
    private  func initEECSBuildingFloor2() {
        
    }
    
    private func initGGBrownPointNodes (_ floor : Int) {
    }

    private func initEECSPointNodes (_ floor : Int) {
        switch (floor) {
        case 1:
            initEECSBuildingFloor1()
            break
        case 2:
            initEECSBuildingFloor2()
            break
        default:
            return
        }
    }
}


class RoomMap {
    private var buildingRoomMap = [String: Int]()
    
    func getBuildingRoomMap() -> [String:Int] {
        return buildingRoomMap
    }

    func initBuildingRoomMap(_ building : Int) {
        switch (building) {
            case Building.GGBrown:
                initGGBrownRoomMap()
                break
            case Building.EECS:
                initEECSBuildingRoomMap()
                break
            default:
                break
        }
    }
    
    private func initEECSBuildingFloor1() {
        var count = -1
        buildingRoomMap["1000"] = incrementNum(count: &count) // 0
        buildingRoomMap["1001"] = count
        
        buildingRoomMap["1003"] = incrementNum(count: &count)
        buildingRoomMap["1005"] = incrementNum(count: &count)
        buildingRoomMap["1008"] = incrementNum(count: &count)
        buildingRoomMap["1012"] = incrementNum(count: &count)
        buildingRoomMap["1016"] = incrementNum(count: &count)
        
        buildingRoomMap["1200"] = incrementNum(count: &count)
        buildingRoomMap["1222"] = incrementNum(count: &count)
        buildingRoomMap["1222A"] = incrementNum(count: &count)
        buildingRoomMap["1226"] = incrementNum(count: &count)
        
        buildingRoomMap["1226"] = incrementNum(count: &count)
        buildingRoomMap["1226A"] = count
        buildingRoomMap["1226B"] = count
        
        buildingRoomMap["1230"] = incrementNum(count: &count)
        
        buildingRoomMap["1234"] = incrementNum(count: &count)
        buildingRoomMap["1234A"] = count
        buildingRoomMap["1240"] = count
        buildingRoomMap["1246"] = count
        buildingRoomMap["1246A"] = count
        buildingRoomMap["1246B"] = count
        buildingRoomMap["1246C"] = count
        buildingRoomMap["1246D"] = count
        buildingRoomMap["1239"] = count
        
        buildingRoomMap["1241"] = incrementNum(count: &count)
        buildingRoomMap["1243"] = count
        buildingRoomMap["1247"] = count
        
        buildingRoomMap["1303"] = incrementNum(count: &count)
        buildingRoomMap["1311"] = incrementNum(count: &count)
        buildingRoomMap["1322"] = incrementNum(count: &count)
        
        buildingRoomMap["1325"] = incrementNum(count: &count)
        buildingRoomMap["1327"] = count
        
        buildingRoomMap["1333M"] = incrementNum(count: &count)
        
        buildingRoomMap["1324W"] = incrementNum(count: &count)
        buildingRoomMap["1326"] = count

        buildingRoomMap["1334"] = incrementNum(count: &count)
        buildingRoomMap["1336"] = count
        buildingRoomMap["1340"] = count
        
        buildingRoomMap["1346"] = incrementNum(count: &count)
        buildingRoomMap["1348"] = incrementNum(count: &count)
        
        buildingRoomMap["1332"] = incrementNum(count: &count)
        buildingRoomMap["1322A"] = count
        buildingRoomMap["1322C"] = count
        buildingRoomMap["14C9"] = count
        buildingRoomMap["1432"] = count
        buildingRoomMap["1436"] = count
        
        buildingRoomMap["1400"] = incrementNum(count: &count)
        buildingRoomMap["1401A"] = count
        buildingRoomMap["1401B"] = count
        buildingRoomMap["1403"] = count
        buildingRoomMap["1406"] = count
        
        buildingRoomMap["1410"] = incrementNum(count: &count)
        buildingRoomMap["1410A"] = count
        buildingRoomMap["1411A"] = count
        buildingRoomMap["1412"] = count
        buildingRoomMap["1414"] = count
        
        buildingRoomMap["1411"] = incrementNum(count: &count)
        buildingRoomMap["1417"] = count
        
        buildingRoomMap["1421"] = incrementNum(count: &count)
        
        buildingRoomMap["1427"] = incrementNum(count: &count)
        buildingRoomMap["1437"] = count
        
        buildingRoomMap["1428"] = incrementNum(count: &count)
        buildingRoomMap["1428A"] = count

        buildingRoomMap["14C7"] = incrementNum(count: &count)
        buildingRoomMap["14C4"] = count
        buildingRoomMap["1440"] = count
        buildingRoomMap["1440E"] = count
        buildingRoomMap["1440S"] = count
        buildingRoomMap["1445"] = count
        buildingRoomMap["1445S"] = count
        buildingRoomMap["1448"] = count
        buildingRoomMap["1450"] = count
        buildingRoomMap["1452"] = count
        buildingRoomMap["1454"] = count
        buildingRoomMap["1456"] = count
        buildingRoomMap["1460"] = count
        buildingRoomMap["1462"] = count
        buildingRoomMap["1471"] = count
        buildingRoomMap["1473"] = count
        buildingRoomMap["1475"] = count
        buildingRoomMap["1479"] = count
        buildingRoomMap["1500"] = count
    }
    
    private func initEECSBuildingFloor2() {
        
    }
    
    private func initEECSBuildingRoomMap() {
        initEECSBuildingFloor1()
        initEECSBuildingFloor2()
    }
    
    private func initGGBrownRoomMap() {
        
    }
    
    func roomExists(room : String) -> Bool {
        return buildingRoomMap[room] != nil
    }
    
    func roomEquals(room1 : String, room2 : String) -> Bool {
        return buildingRoomMap[room1] == buildingRoomMap[room2]
    }
    
    func getRoomValue(room : String) -> Int {
        return buildingRoomMap[room]!
    }
    
}

class PointMap {
    private var buildingPointMap = [Int: Point]()
    
    func getBuildingPointMap() -> [Int:Point] {
        return buildingPointMap
    }

    func initBuildingPointMap(building : Int, floor : Int) {
        switch (building) {
        case Building.GGBrown:
            initGGBrownPointMap(floor)
            break
        case Building.EECS:
            initEECSBuildingPointMap(floor)
            break
        default:
            break
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
        buildingPointMap[Building.roomMap.getRoomValue(room: "1222A")] = Point(x: 2125, y: 1200) // Room 1222A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1200")] = Point(x: 2565, y: 1200) // Room 1200
        buildingPointMap[Building.roomMap.getRoomValue(room: "1226")] = Point(x: 2105, y: 1350) // Room 1226
        buildingPointMap[Building.roomMap.getRoomValue(room: "1230")] = Point(x: 1850, y: 1310) // Room 1230
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1303")] = Point(x: 2565, y: 840) // Room 1303
        buildingPointMap[Building.roomMap.getRoomValue(room: "1311")] = Point(x: 2325, y: 840) // Room 1311
        buildingPointMap[Building.roomMap.getRoomValue(room: "1322")] = Point(x: 1900, y: 650) // Room 1322
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1346")] = Point(x: 1140, y: 870) // Room 1346
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1234")] = Point(x: 2565, y: 1200) // Room 1234
        buildingPointMap[Building.roomMap.getRoomValue(room: "1240")] = Point(x: 2565, y: 1200) // Room 1240
        buildingPointMap[Building.roomMap.getRoomValue(room: "1239")] = Point(x: 2565, y: 1200) // Room 1239
        buildingPointMap[Building.roomMap.getRoomValue(room: "1241")] = Point(x: 2565, y: 1200) // Room 1241
        buildingPointMap[Building.roomMap.getRoomValue(room: "1243")] = Point(x: 2565, y: 1200) // Room 1243
        buildingPointMap[Building.roomMap.getRoomValue(room: "1247")] = Point(x: 2565, y: 1200) // Room 1247
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1325")] = Point(x: 2565, y: 1200) // Room 1325
        buildingPointMap[Building.roomMap.getRoomValue(room: "1327")] = Point(x: 2565, y: 1200) // Room 1327
        buildingPointMap[Building.roomMap.getRoomValue(room: "1334")] = Point(x: 2565, y: 1200) // Room 1334
        buildingPointMap[Building.roomMap.getRoomValue(room: "1336")] = Point(x: 2565, y: 1200) // Room 1336
        buildingPointMap[Building.roomMap.getRoomValue(room: "1340")] = Point(x: 2565, y: 1200) // Room 1340
    }
    
    private func initEECSBuildingFloor2() {
        
    }
    
    private func initEECSBuildingPointMap(_ floor : Int) {
        switch (floor) {
        case 1:
            initEECSBuildingFloor1()
            break
        case 2:
            initEECSBuildingFloor2()
            break
        default:
            return
        }
    }
    
    private func initGGBrownPointMap(_ floor : Int) {
        
    }

}
