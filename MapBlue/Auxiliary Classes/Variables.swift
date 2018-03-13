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

class RoomMap {
    private var GGBrownBuildingRoomMap = [Int: Int]()
    private var EECSBuildingRoomMap = [Int: Int]()
    
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
    
    func getBuildingRoomMap(_ building : Int) -> [Int:Int] {
        switch (building) {
        case Building.GGBrown:
            return GGBrownBuildingRoomMap
        case Building.EECS:
            return EECSBuildingRoomMap
        default:
            return [Int:Int]()
        }
    }
    
    func initEECSBuildingRoomMap() {
        var count = -1
        EECSBuildingRoomMap[1000] = incrementNum(count: &count)
        EECSBuildingRoomMap[1001] = incrementNum(count: &count)
        EECSBuildingRoomMap[1003] = incrementNum(count: &count)
        EECSBuildingRoomMap[1005] = incrementNum(count: &count)
        EECSBuildingRoomMap[1008] = incrementNum(count: &count)
        EECSBuildingRoomMap[1012] = incrementNum(count: &count)
        EECSBuildingRoomMap[1016] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1200] = incrementNum(count: &count)
        EECSBuildingRoomMap[1222] = incrementNum(count: &count)
        EECSBuildingRoomMap[1226] = incrementNum(count: &count)
        EECSBuildingRoomMap[1230] = incrementNum(count: &count)
        EECSBuildingRoomMap[1226] = incrementNum(count: &count)
        EECSBuildingRoomMap[1230] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1234] = incrementNum(count: &count)
        EECSBuildingRoomMap[1240] = count
        EECSBuildingRoomMap[1246] = count
        EECSBuildingRoomMap[1239] = count
        
        EECSBuildingRoomMap[1241] = incrementNum(count: &count)
        EECSBuildingRoomMap[1243] = count
        EECSBuildingRoomMap[1247] = count
        
        EECSBuildingRoomMap[1303] = incrementNum(count: &count)
        EECSBuildingRoomMap[1311] = incrementNum(count: &count)
        EECSBuildingRoomMap[1322] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1325] = incrementNum(count: &count)
        EECSBuildingRoomMap[1327] = count
        
        EECSBuildingRoomMap[1334] = incrementNum(count: &count)
        EECSBuildingRoomMap[1336] = count
        EECSBuildingRoomMap[1340] = count
        
        EECSBuildingRoomMap[1346] = incrementNum(count: &count)
        EECSBuildingRoomMap[1348] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1332] = incrementNum(count: &count)
        EECSBuildingRoomMap[1432] = count
        EECSBuildingRoomMap[1436] = count
        
        EECSBuildingRoomMap[1400] = incrementNum(count: &count)
        EECSBuildingRoomMap[1403] = count
        EECSBuildingRoomMap[1406] = count
        
        EECSBuildingRoomMap[1410] = incrementNum(count: &count)
        EECSBuildingRoomMap[1412] = count
        EECSBuildingRoomMap[1414] = count
        
        EECSBuildingRoomMap[1411] = incrementNum(count: &count)
        EECSBuildingRoomMap[1417] = count
        
        EECSBuildingRoomMap[1421] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1427] = incrementNum(count: &count)
        EECSBuildingRoomMap[1437] = count
        
        EECSBuildingRoomMap[1428] = incrementNum(count: &count)
        
        EECSBuildingRoomMap[1440] = incrementNum(count: &count)
        EECSBuildingRoomMap[1445] = count
        EECSBuildingRoomMap[1448] = count
        EECSBuildingRoomMap[1450] = count
        EECSBuildingRoomMap[1452] = count
        EECSBuildingRoomMap[1454] = count
        EECSBuildingRoomMap[1456] = count
        EECSBuildingRoomMap[1460] = count
        EECSBuildingRoomMap[1462] = count
        EECSBuildingRoomMap[1471] = count
        EECSBuildingRoomMap[1473] = count
        EECSBuildingRoomMap[1475] = count
        EECSBuildingRoomMap[1479] = count
        
        EECSBuildingRoomMap[1500] = count
    }
    
    func initGGBrownRoomMap() {
        
    }
    
    func roomExists(room : Int, building : Int) -> Bool {
        return getBuildingRoomMap(building)[room] != nil
    }
    
    func roomEquals(room1 : Int, room2 : Int, building : Int) -> Bool {
        return getBuildingRoomMap(building)[room1] == getBuildingRoomMap(building)[room2]
    }
    
    func getRoomValue(room : Int, building: Int) -> Int {
        return getBuildingRoomMap(building)[room]!
    }
    
}
