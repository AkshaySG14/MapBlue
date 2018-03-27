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
    var buildingNodes: [Point] = []
    
    func initPoints () {
        buildingNodes.append(Point(x: 500, y: 500))
        buildingNodes.append(Point(x: 1500, y: 1200))
    }
    
}


class RoomMap {
    private var GGBrownBuildingRoomMap = [String: Int]()
    private var EECSBuildingRoomMap = [String: Int]()
    
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
    
    func getBuildingRoomMap(_ building : Int) -> [String:Int] {
        switch (building) {
        case Building.GGBrown:
            return GGBrownBuildingRoomMap
        case Building.EECS:
            return EECSBuildingRoomMap
        default:
            return [String:Int]()
        }
    }
    
    func initEECSBuildingRoomMap() {
        var count = -1
        EECSBuildingRoomMap["1000"] = incrementNum(count: &count) // 0
        EECSBuildingRoomMap["1001"] = count
        
        EECSBuildingRoomMap["1003"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1005"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1008"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1012"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1016"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1222"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1222A"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1200"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1226"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1230"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1234"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1240"] = count
        EECSBuildingRoomMap["1246"] = count
        EECSBuildingRoomMap["1239"] = count
        
        EECSBuildingRoomMap["1241"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1243"] = count
        EECSBuildingRoomMap["1247"] = count
        
        EECSBuildingRoomMap["1303"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1311"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1322"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1325"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1327"] = count
        
        EECSBuildingRoomMap["1334"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1336"] = count
        EECSBuildingRoomMap["1340"] = count
        
        EECSBuildingRoomMap["1346"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1348"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1332"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1432"] = count
        EECSBuildingRoomMap["1436"] = count
        
        EECSBuildingRoomMap["1400"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1403"] = count
        EECSBuildingRoomMap["1406"] = count
        
        EECSBuildingRoomMap["1410"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1412"] = count
        EECSBuildingRoomMap["1414"] = count
        
        EECSBuildingRoomMap["1411"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1417"] = count
    
        EECSBuildingRoomMap["1421"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1427"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1437"] = count
        
        EECSBuildingRoomMap["1428"] = incrementNum(count: &count)
        
        EECSBuildingRoomMap["1440"] = incrementNum(count: &count)
        EECSBuildingRoomMap["1445"] = count
        EECSBuildingRoomMap["1448"] = count
        EECSBuildingRoomMap["1450"] = count
        EECSBuildingRoomMap["1452"] = count
        EECSBuildingRoomMap["1454"] = count
        EECSBuildingRoomMap["1456"] = count
        EECSBuildingRoomMap["1460"] = count
        EECSBuildingRoomMap["1462"] = count
        EECSBuildingRoomMap["1471"] = count
        EECSBuildingRoomMap["1473"] = count
        EECSBuildingRoomMap["1475"] = count
        EECSBuildingRoomMap["1479"] = count
        EECSBuildingRoomMap["1500"] = count
    }
    
    func initGGBrownRoomMap() {
        
    }
    
    func roomExists(room : String, building : Int) -> Bool {
        return getBuildingRoomMap(building)[room] != nil
    }
    
    func roomEquals(room1 : String, room2 : String, building : Int) -> Bool {
        return getBuildingRoomMap(building)[room1] == getBuildingRoomMap(building)[room2]
    }
    
    func getRoomValue(room : String, building: Int) -> Int {
        return getBuildingRoomMap(building)[room]!
    }
    
}

class PointMap {
    private var GGBrownBuildingPointMap = [Int: Point]()
    private var EECSBuildingPointMap = [Int: Point]()
    
    func initBuildingPointMap(_ building : Int) {
        switch (building) {
        case Building.GGBrown:
            initGGBrownPointMap()
            break
        case Building.EECS:
            initEECSBuildingPointMap()
            break
        default:
            break
        }
    }
    
    func getBuildingPointMap(_ building : Int) -> [Int:Point] {
        switch (building) {
        case Building.GGBrown:
            return GGBrownBuildingPointMap
        case Building.EECS:
            return EECSBuildingPointMap
        default:
            return [Int:Point]()
        }
    }
    
    private func initEECSBuildingPointMap() {
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1000", building: Building.EECS)] = Point(x: 2500, y: 1750) // Room 1000/1001
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1003", building: Building.EECS)] = Point(x: 2575, y: 1575) // Room 1003
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1005", building: Building.EECS)] = Point(x: 2575, y: 1385) // Room 1005
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1008", building: Building.EECS)] = Point(x: 2285, y: 1405) // Room 1008
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1012", building: Building.EECS)] = Point(x: 2285, y: 1275) // Room 1012
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1016", building: Building.EECS)] = Point(x: 2265, y: 1125) // Room 1016
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1222", building: Building.EECS)] = Point(x: 2105, y: 1115) // Room 1222
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1222A", building: Building.EECS)] = Point(x: 2125, y: 1200) // Room 1222A
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1200", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1200
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1226", building: Building.EECS)] = Point(x: 2105, y: 1350) // Room 1226
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1230", building: Building.EECS)] = Point(x: 1850, y: 1310) // Room 1230
        
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1303", building: Building.EECS)] = Point(x: 2565, y: 840) // Room 1303
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1311", building: Building.EECS)] = Point(x: 2325, y: 840) // Room 1311
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1322", building: Building.EECS)] = Point(x: 1900, y: 650) // Room 1322

        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1346", building: Building.EECS)] = Point(x: 1140, y: 870) // Room 1346

        
        
        /* CANT DO CUZ I DONT HAVE ACTUAL MAP - JAMES
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1234", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1234
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1240", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1240
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1239", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1239
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1241", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1241
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1243", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1243
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1247", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1247
         
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1325", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1325
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1327", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1327
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1334", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1334
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1336", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1336
        EECSBuildingPointMap[Building.roomMap.getRoomValue(room: "1340", building: Building.EECS)] = Point(x: 2565, y: 1200) // Room 1340

            plus pretty much the rest of the rooms on eecs floor 1
        */
        
        
    }
    
    private func initGGBrownPointMap() {
        
    }

}
