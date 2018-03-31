//
//  Variables.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 12/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

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
    
    private func initEECSBuildingFloor1 () {
        buildingNodes.append(Point(x: 75, y: 887.5)) // 0
        buildingNodes.append(Point(x: 225, y: 887.5)) // 1
        buildingNodes.append(Point(x: 375, y: 887.5)) // 2
        buildingNodes.append(Point(x: 525, y: 887.5)) // 3
        buildingNodes.append(Point(x: 675, y: 887.5)) // 4
        buildingNodes.append(Point(x: 825, y: 887.5)) // 5
        buildingNodes.append(Point(x: 975, y: 887.5)) // 6
        buildingNodes.append(Point(x: 1050, y: 810)) // 7
        buildingNodes.append(Point(x: 1150, y: 810)) // 8
        buildingNodes.append(Point(x: 1275, y: 810)) // 9
        buildingNodes.append(Point(x: 1400, y: 810)) // 10
        buildingNodes.append(Point(x: 1525, y: 810)) // 11
        buildingNodes.append(Point(x: 1650, y: 810)) // 12
        buildingNodes.append(Point(x: 1650, y: 677.5)) // 13
        buildingNodes.append(Point(x: 1650, y: 540)) // 14
        buildingNodes.append(Point(x: 1775, y: 540)) // 15
        buildingNodes.append(Point(x: 1900, y: 540)) // 16
        buildingNodes.append(Point(x: 2025, y: 540)) // 17
        buildingNodes.append(Point(x: 2150, y: 540)) // 18
        buildingNodes.append(Point(x: 2275, y: 540)) // 19
        buildingNodes.append(Point(x: 2400, y: 540)) // 20
        buildingNodes.append(Point(x: 2525, y: 540)) // 21
        buildingNodes.append(Point(x: 2650, y: 540)) // 22
        buildingNodes.append(Point(x: 2750, y: 540)) // 23
        buildingNodes.append(Point(x: 2750, y: 415)) // 24
        buildingNodes.append(Point(x: 2750, y: 290)) // 25
        buildingNodes.append(Point(x: 2750, y: 165)) // 26
        buildingNodes.append(Point(x: 2750, y: 40)) // 27
        buildingNodes.append(Point(x: 2750, y: 665)) // 28
        buildingNodes.append(Point(x: 2750, y: 790)) // 29
        buildingNodes.append(Point(x: 2750, y: 900)) // 30
        buildingNodes.append(Point(x: 2750, y: 1000)) // 31
        buildingNodes.append(Point(x: 2650, y: 1000)) // 32
        buildingNodes.append(Point(x: 2525, y: 1000)) // 33
        buildingNodes.append(Point(x: 2400, y: 1000)) // 34
        buildingNodes.append(Point(x: 2400, y: 425)) // 35
        buildingNodes.append(Point(x: 2275, y: 1000)) // 36
        buildingNodes.append(Point(x: 2150, y: 1000)) // 37
        buildingNodes.append(Point(x: 2025, y: 1000)) // 38 
        buildingNodes.append(Point(x: 1900, y: 1000)) // 39
        buildingNodes.append(Point(x: 1775, y: 1000)) // 40
        buildingNodes.append(Point(x: 1650, y: 1000)) // 41
        buildingNodes.append(Point(x: 1525, y: 1000)) // 42
        buildingNodes.append(Point(x: 1400, y: 1000)) // 43
        buildingNodes.append(Point(x: 1275, y: 1000)) // 44
        buildingNodes.append(Point(x: 1275, y: 900)) // 45
        buildingNodes.append(Point(x: 2025, y: 665)) // 46
        buildingNodes.append(Point(x: 2025, y: 790)) // 47
        buildingNodes.append(Point(x: 2025, y: 915)) // 48
        buildingNodes.append(Point(x: 1650, y: 900)) // 49
        buildingNodes.append(Point(x: 1900, y: 1125)) // 50
        buildingNodes.append(Point(x: 1775, y: 1125)) // 51
        buildingNodes.append(Point(x: 2400, y: 1100)) // 52
        buildingNodes.append(Point(x: 2400, y: 1225)) // 53
        buildingNodes.append(Point(x: 2400, y: 1350)) // 54
        buildingNodes.append(Point(x: 2475, y: 1350)) // 55
        buildingNodes.append(Point(x: 2475, y: 1450)) // 56
        buildingNodes.append(Point(x: 2475, y: 1550)) // 57
        buildingNodes.append(Point(x: 2475, y: 1650)) // 58
        buildingNodes.append(Point(x: 2385, y: 1650)) // 59
        buildingNodes.append(Point(x: 2025, y: 1175)) // 60
        buildingNodes.append(Point(x: 1275, y: 1165)) // 61
        buildingNodes.append(Point(x: 1275, y: 1250)) // 62
        buildingNodes.append(Point(x: 1400, y: 1165)) // 63
        buildingNodes.append(Point(x: 1525, y: 1165)) // 64
        buildingNodes.append(Point(x: 1650, y: 1165)) // 65
    }
    
    // Auxiliary function so that act of adding neighbors is a mutual action.
    private func addMutualNeighbors(one : Point, two : Point) {
        one.neighbors.append(two)
        two.neighbors.append(one)
    }
    
    private func initEECSBuildingFloor1Neighbors() {
        // Farthest left nodes (below Nanofabrication Facility).
        addMutualNeighbors(one: buildingNodes[0], two: buildingNodes[1])
        addMutualNeighbors(one: buildingNodes[1], two: buildingNodes[2])
        addMutualNeighbors(one: buildingNodes[2], two: buildingNodes[3])
        addMutualNeighbors(one: buildingNodes[3], two: buildingNodes[4])
        addMutualNeighbors(one: buildingNodes[4], two: buildingNodes[5])
        addMutualNeighbors(one: buildingNodes[5], two: buildingNodes[6])
        addMutualNeighbors(one: buildingNodes[6], two: buildingNodes[7])
        addMutualNeighbors(one: buildingNodes[7], two: buildingNodes[8])
        addMutualNeighbors(one: buildingNodes[8], two: buildingNodes[9])
        addMutualNeighbors(one: buildingNodes[8], two: buildingNodes[9])
        addMutualNeighbors(one: buildingNodes[9], two: buildingNodes[10])
        addMutualNeighbors(one: buildingNodes[9], two: buildingNodes[45])
        addMutualNeighbors(one: buildingNodes[10], two: buildingNodes[11])
        addMutualNeighbors(one: buildingNodes[11], two: buildingNodes[12])
        addMutualNeighbors(one: buildingNodes[12], two: buildingNodes[13])
        addMutualNeighbors(one: buildingNodes[12], two: buildingNodes[49])
        addMutualNeighbors(one: buildingNodes[13], two: buildingNodes[14])
        addMutualNeighbors(one: buildingNodes[14], two: buildingNodes[15])
        addMutualNeighbors(one: buildingNodes[15], two: buildingNodes[16])
        addMutualNeighbors(one: buildingNodes[16], two: buildingNodes[17])
        addMutualNeighbors(one: buildingNodes[17], two: buildingNodes[18])
        addMutualNeighbors(one: buildingNodes[17], two: buildingNodes[38])
        addMutualNeighbors(one: buildingNodes[18], two: buildingNodes[19])
        addMutualNeighbors(one: buildingNodes[19], two: buildingNodes[20])
        addMutualNeighbors(one: buildingNodes[20], two: buildingNodes[21])
        addMutualNeighbors(one: buildingNodes[20], two: buildingNodes[35])
        addMutualNeighbors(one: buildingNodes[21], two: buildingNodes[22])
        addMutualNeighbors(one: buildingNodes[22], two: buildingNodes[23])
        addMutualNeighbors(one: buildingNodes[23], two: buildingNodes[24])
        addMutualNeighbors(one: buildingNodes[23], two: buildingNodes[28])
        addMutualNeighbors(one: buildingNodes[24], two: buildingNodes[25])
        addMutualNeighbors(one: buildingNodes[25], two: buildingNodes[26])
        addMutualNeighbors(one: buildingNodes[26], two: buildingNodes[27])
        addMutualNeighbors(one: buildingNodes[28], two: buildingNodes[29])
        addMutualNeighbors(one: buildingNodes[29], two: buildingNodes[30])
        addMutualNeighbors(one: buildingNodes[30], two: buildingNodes[31])
        addMutualNeighbors(one: buildingNodes[31], two: buildingNodes[32])
        addMutualNeighbors(one: buildingNodes[32], two: buildingNodes[33])
        addMutualNeighbors(one: buildingNodes[34], two: buildingNodes[36])
        addMutualNeighbors(one: buildingNodes[34], two: buildingNodes[52])
        addMutualNeighbors(one: buildingNodes[36], two: buildingNodes[37])
        addMutualNeighbors(one: buildingNodes[37], two: buildingNodes[38])
        addMutualNeighbors(one: buildingNodes[38], two: buildingNodes[39])
        addMutualNeighbors(one: buildingNodes[38], two: buildingNodes[48])
        addMutualNeighbors(one: buildingNodes[38], two: buildingNodes[60])
        addMutualNeighbors(one: buildingNodes[39], two: buildingNodes[50])
        addMutualNeighbors(one: buildingNodes[40], two: buildingNodes[41])
        addMutualNeighbors(one: buildingNodes[40], two: buildingNodes[51])
        addMutualNeighbors(one: buildingNodes[41], two: buildingNodes[42])
        addMutualNeighbors(one: buildingNodes[41], two: buildingNodes[49])
        addMutualNeighbors(one: buildingNodes[42], two: buildingNodes[43])
        addMutualNeighbors(one: buildingNodes[43], two: buildingNodes[44])
        addMutualNeighbors(one: buildingNodes[44], two: buildingNodes[45])
        addMutualNeighbors(one: buildingNodes[45], two: buildingNodes[60])
        addMutualNeighbors(one: buildingNodes[48], two: buildingNodes[47])
        addMutualNeighbors(one: buildingNodes[47], two: buildingNodes[46])
        addMutualNeighbors(one: buildingNodes[49], two: buildingNodes[64])
        addMutualNeighbors(one: buildingNodes[50], two: buildingNodes[51])
        addMutualNeighbors(one: buildingNodes[52], two: buildingNodes[53])
        addMutualNeighbors(one: buildingNodes[53], two: buildingNodes[54])
        addMutualNeighbors(one: buildingNodes[54], two: buildingNodes[55])
        addMutualNeighbors(one: buildingNodes[55], two: buildingNodes[56])
        addMutualNeighbors(one: buildingNodes[56], two: buildingNodes[57])
        addMutualNeighbors(one: buildingNodes[57], two: buildingNodes[58])
        addMutualNeighbors(one: buildingNodes[58], two: buildingNodes[59])
        addMutualNeighbors(one: buildingNodes[61], two: buildingNodes[62])
        addMutualNeighbors(one: buildingNodes[61], two: buildingNodes[63])
        addMutualNeighbors(one: buildingNodes[63], two: buildingNodes[64])
        addMutualNeighbors(one: buildingNodes[64], two: buildingNodes[65])
    }
    
    private  func initEECSBuildingFloor2() {
        
    }
    
    private  func initEECSBuildingFloor3() {
        
    }
    
    private  func initEECSBuildingFloor4() {
        
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
            initbuildingRoomMap()
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
        
        buildingRoomMap["stairs1"] = incrementNum(count: &count)
        buildingRoomMap["stairs2"] = incrementNum(count: &count)
        buildingRoomMap["stairs3"] = incrementNum(count: &count)
        buildingRoomMap["stairs4"] = incrementNum(count: &count)
        buildingRoomMap["stairs5"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor2() {
        var count = -1
        buildingRoomMap["2001"] = incrementNum(count : &count)
        buildingRoomMap["2001B"] = count
        
        buildingRoomMap["2003"] = incrementNum(count : &count)
        buildingRoomMap["2005"] = count
        buildingRoomMap["2007"] = count
        
        buildingRoomMap["2111"] = incrementNum(count : &count)
        buildingRoomMap["2117"] = count
        buildingRoomMap["2119"] = count
        
        buildingRoomMap["2114"] = incrementNum(count : &count)
        buildingRoomMap["2114A"] = count
        buildingRoomMap["2114B"] = count
        buildingRoomMap["2114C"] = count
        buildingRoomMap["2114D"] = count
        buildingRoomMap["2114E"] = count
        buildingRoomMap["2114F"] = count
        buildingRoomMap["2120"] = count
        
        buildingRoomMap["2200"] = incrementNum(count : &count)
        
        buildingRoomMap["2210"] = incrementNum(count : &count)
        buildingRoomMap["2214"] = count
        buildingRoomMap["2218"] = count
        buildingRoomMap["2220"] = count
        
        buildingRoomMap["2211"] = incrementNum(count : &count)
        buildingRoomMap["2213"] = count
        buildingRoomMap["2215"] = count
        buildingRoomMap["2217"] = count
        buildingRoomMap["2219"] = count
        buildingRoomMap["2221"] = count
        
        buildingRoomMap["2222"] = incrementNum(count : &count)
        buildingRoomMap["2224"] = count
        buildingRoomMap["2224A"] = count
        
        buildingRoomMap["2223"] = incrementNum(count : &count)
        buildingRoomMap["2225"] = count
        buildingRoomMap["2227"] = count
        buildingRoomMap["2229"] = count
        buildingRoomMap["2231"] = count
        buildingRoomMap["2233"] = count
        
        buildingRoomMap["2228"] = incrementNum(count : &count)
        buildingRoomMap["2228A"] = count
        buildingRoomMap["2230"] = count
        buildingRoomMap["2230A"] = count
        buildingRoomMap["2234"] = count
        buildingRoomMap["2236"] = count
        buildingRoomMap["2238"] = count
        buildingRoomMap["2240"] = count
        buildingRoomMap["2242"] = count
        buildingRoomMap["2246"] = count
        
        buildingRoomMap["2237"] = incrementNum(count : &count)
        buildingRoomMap["2239"] = count
        buildingRoomMap["2241"] = count
        buildingRoomMap["2243"] = count
        buildingRoomMap["2245"] = count
        
        buildingRoomMap["2301"] = incrementNum(count : &count)
        buildingRoomMap["2302"] = count
        buildingRoomMap["2304"] = count
        buildingRoomMap["2305"] = count
        buildingRoomMap["2306"] = count
        buildingRoomMap["2307"] = count
        buildingRoomMap["2308"] = count
        buildingRoomMap["2309"] = count
        buildingRoomMap["2311"] = count
        
        buildingRoomMap["2312"] = incrementNum(count : &count)
        buildingRoomMap["2314"] = count
        buildingRoomMap["2316"] = count
        buildingRoomMap["2316A"] = count
        
        buildingRoomMap["2327"] = incrementNum(count : &count)
        buildingRoomMap["2327A"] = count
        
        buildingRoomMap["2332"] = incrementNum(count : &count)
        buildingRoomMap["2334"] = count
        buildingRoomMap["2336"] = count
        
        buildingRoomMap["2340"] = incrementNum(count : &count)
        
        buildingRoomMap["2341"] = incrementNum(count : &count)
        buildingRoomMap["2345"] = count
        
        buildingRoomMap["2310"] = incrementNum(count : &count)
        
        buildingRoomMap["2310A"] = count
        buildingRoomMap["2416"] = count
        buildingRoomMap["2418"] = count
        
        buildingRoomMap["2401"] = incrementNum(count : &count)
        buildingRoomMap["2402"] = count
        buildingRoomMap["2403"] = count
        buildingRoomMap["2407"] = count
        buildingRoomMap["2408"] = count
        buildingRoomMap["2409"] = count
        buildingRoomMap["2411"] = count
        buildingRoomMap["2413"] = count
        buildingRoomMap["2415"] = count
        
        buildingRoomMap["2417"] = incrementNum(count : &count)
        buildingRoomMap["2417B"] = count
        buildingRoomMap["2417C"] = count
        buildingRoomMap["2417D"] = count
        buildingRoomMap["2417E"] = count
        buildingRoomMap["2417F"] = count
        buildingRoomMap["2417G"] = count
        
        buildingRoomMap["2421"] = incrementNum(count : &count)
        buildingRoomMap["2423"] = count
        buildingRoomMap["2423A"] = count
        buildingRoomMap["2423B"] = count
        buildingRoomMap["2423C"] = count
        buildingRoomMap["2425"] = count
        buildingRoomMap["2431"] = count
        buildingRoomMap["2433"] = count
        buildingRoomMap["2435"] = count
        buildingRoomMap["2437"] = count
        
        buildingRoomMap["2420"] = incrementNum(count : &count)
        buildingRoomMap["2420A"] = count
        buildingRoomMap["2420B"] = count
        buildingRoomMap["2420C"] = count
        
        buildingRoomMap["2422"] = incrementNum(count : &count)
        
        buildingRoomMap["2426"] = incrementNum(count : &count)
        
        buildingRoomMap["stairs1"] = incrementNum(count: &count)
        buildingRoomMap["stairs2"] = incrementNum(count: &count)
        buildingRoomMap["stairs3"] = incrementNum(count: &count)
        buildingRoomMap["stairs4"] = incrementNum(count: &count)
        buildingRoomMap["stairs5"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor3() {
        var count = -1
        buildingRoomMap["3001"] = incrementNum(count : &count)
        buildingRoomMap["3001A"] = count
        buildingRoomMap["3001B"] = count
        buildingRoomMap["3001D"] = count
        buildingRoomMap["3001E"] = count
        buildingRoomMap["3001F"] = count
        buildingRoomMap["3003"] = count
        buildingRoomMap["3005"] = count
        buildingRoomMap["3005A"] = count
        buildingRoomMap["3005B"] = count
        
        buildingRoomMap["3007"] = incrementNum(count : &count)
        
        buildingRoomMap["3110"] = incrementNum(count : &count)
        buildingRoomMap["3114"] = count
        buildingRoomMap["3116"] = count
        buildingRoomMap["3118"] = count
        buildingRoomMap["3120"] = count
        buildingRoomMap["3122"] = count
        buildingRoomMap["3124"] = count
        
        buildingRoomMap["3111"] = incrementNum(count : &count)
        buildingRoomMap["3114"] = count
        buildingRoomMap["3117"] = count
        buildingRoomMap["3121"] = count
        
        buildingRoomMap["3128"] = incrementNum(count : &count)
        
        buildingRoomMap["3200"] = incrementNum(count : &count)
        buildingRoomMap["3200A"] = count
        buildingRoomMap["3200B"] = count
        
        buildingRoomMap["3211"] = incrementNum(count : &count)
        buildingRoomMap["3213"] = count
        buildingRoomMap["3215"] = count
        buildingRoomMap["3217"] = count
        buildingRoomMap["3219"] = count
        buildingRoomMap["3221"] = count
        
        buildingRoomMap["3214"] = incrementNum(count : &count)
        buildingRoomMap["3216"] = count
        buildingRoomMap["3218"] = count
        buildingRoomMap["3220"] = count
        
        buildingRoomMap["3223"] = incrementNum(count : &count)
        buildingRoomMap["3225"] = count
        buildingRoomMap["3227"] = count
        buildingRoomMap["3229"] = count
        buildingRoomMap["3231"] = count
        buildingRoomMap["3233"] = count
        
        buildingRoomMap["3226"] = incrementNum(count : &count)
        buildingRoomMap["3228"] = count
        buildingRoomMap["3228A"] = count
        buildingRoomMap["3236"] = count
        
        buildingRoomMap["3237"] = incrementNum(count : &count)
        buildingRoomMap["3239"] = count
        buildingRoomMap["3241"] = count
        buildingRoomMap["3243"] = count
        buildingRoomMap["3245"] = count
        
        buildingRoomMap["3238"] = incrementNum(count : &count)
        buildingRoomMap["3240"] = count
        buildingRoomMap["3242"] = count
        buildingRoomMap["3244"] = count
        
        buildingRoomMap["3300"] = incrementNum(count : &count)
        buildingRoomMap["3301"] = count
        buildingRoomMap["3302"] = count
        buildingRoomMap["3303"] = count
        buildingRoomMap["3303A"] = count
        
        buildingRoomMap["3308"] = incrementNum(count : &count)
        buildingRoomMap["3309"] = count
        buildingRoomMap["3310"] = count
        buildingRoomMap["3400"] = count
        
        buildingRoomMap["3311"] = incrementNum(count : &count)
        buildingRoomMap["3313"] = count
        
        buildingRoomMap["3312"] = incrementNum(count : &count)
        buildingRoomMap["3314"] = count
        buildingRoomMap["3316"] = count
        
        buildingRoomMap["3321"] = incrementNum(count : &count)
        buildingRoomMap["3327"] = count
        
        buildingRoomMap["3322"] = incrementNum(count : &count)
        
        buildingRoomMap["3331"] = incrementNum(count : &count)
        
        buildingRoomMap["3332"] = incrementNum(count : &count)
        buildingRoomMap["3334"] = count
        
        buildingRoomMap["3340"] = incrementNum(count : &count)
        
        buildingRoomMap["3341"] = incrementNum(count : &count)
        buildingRoomMap["3341A"] = count
        buildingRoomMap["3341B"] = count
        
        buildingRoomMap["3401"] = incrementNum(count : &count)
        buildingRoomMap["3402"] = count
        buildingRoomMap["3403"] = count
        buildingRoomMap["3404"] = count
        buildingRoomMap["3405"] = count
        
        buildingRoomMap["3411"] = incrementNum(count : &count)
        buildingRoomMap["3413"] = count
        buildingRoomMap["3415"] = count
        buildingRoomMap["3415A"] = count
        buildingRoomMap["3421"] = count
        
        buildingRoomMap["3424"] = incrementNum(count : &count)
        
        buildingRoomMap["3427"] = incrementNum(count : &count)
        
        buildingRoomMap["3431"] = incrementNum(count : &count)
        
        buildingRoomMap["3433"] = incrementNum(count : &count)
        
        buildingRoomMap["3437"] = incrementNum(count : &count)
        
        buildingRoomMap["stairs1"] = incrementNum(count: &count)
        buildingRoomMap["stairs2"] = incrementNum(count: &count)
        buildingRoomMap["stairs3"] = incrementNum(count: &count)
        buildingRoomMap["stairs4"] = incrementNum(count: &count)
        buildingRoomMap["stairs5"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor4() {
        var count = -1
        buildingRoomMap["4110"] = incrementNum(count : &count)
        buildingRoomMap["4112"] = count
        buildingRoomMap["4114"] = count
        buildingRoomMap["4116"] = count
        buildingRoomMap["4118"] = count
        buildingRoomMap["4120"] = count
        buildingRoomMap["4122"] = count
        
        buildingRoomMap["4230"] = incrementNum(count : &count)
        buildingRoomMap["4230A"] = count
        buildingRoomMap["4230B"] = count
        buildingRoomMap["4230C"] = count
        buildingRoomMap["4230D"] = count
        buildingRoomMap["4234"] = count
        buildingRoomMap["4234A"] = count
        
        buildingRoomMap["4223"] = incrementNum(count : &count)
        buildingRoomMap["4225"] = count
        buildingRoomMap["4227"] = count
        buildingRoomMap["4229"] = count
        buildingRoomMap["4231"] = count
        buildingRoomMap["4233"] = count
        
        buildingRoomMap["4236"] = incrementNum(count : &count)
        buildingRoomMap["4238"] = count
        buildingRoomMap["4240"] = count
        buildingRoomMap["4242"] = count
        buildingRoomMap["4244"] = count
        
        buildingRoomMap["4301"] = incrementNum(count : &count)
        buildingRoomMap["4302"] = count
        buildingRoomMap["4305"] = count
        buildingRoomMap["4401"] = count
        buildingRoomMap["4403"] = count
        
        buildingRoomMap["4313"] = incrementNum(count : &count)
        buildingRoomMap["4315"] = count
        buildingRoomMap["4400"] = count
        buildingRoomMap["4402"] = count
        
        buildingRoomMap["4312"] = incrementNum(count : &count)
        buildingRoomMap["4314"] = count
        buildingRoomMap["4316"] = count
        buildingRoomMap["4334"] = incrementNum(count : &count)
        
        buildingRoomMap["4336"] = incrementNum(count : &count)
        buildingRoomMap["4338"] = count
        
        buildingRoomMap["4341"] = incrementNum(count : &count)
        buildingRoomMap["4343"] = count
        
        buildingRoomMap["4344"] = incrementNum(count : &count)
        buildingRoomMap["4342"] = count
        buildingRoomMap["4342A"] = count
        buildingRoomMap["4344A"] = count
        buildingRoomMap["4344B"] = count
        buildingRoomMap["4440"] = count
        
        buildingRoomMap["4411"] = incrementNum(count : &count)
        buildingRoomMap["4413"] = count
        buildingRoomMap["4415"] = count
        buildingRoomMap["4417"] = count
        
        buildingRoomMap["4418"] = incrementNum(count : &count)
        buildingRoomMap["4327"] = count
        
        buildingRoomMap["4422"] = incrementNum(count : &count)
        buildingRoomMap["4422A"] = count
        buildingRoomMap["4422B"] = count
        buildingRoomMap["4428"] = count
        buildingRoomMap["4428A"] = count
        buildingRoomMap["4428B"] = count
        buildingRoomMap["4428C"] = count
        buildingRoomMap["4428D"] = count
        
        buildingRoomMap["4429"] = incrementNum(count : &count)
        buildingRoomMap["4431"] = count
        buildingRoomMap["4433"] = count
        buildingRoomMap["4435"] = count
        buildingRoomMap["4437"] = count
        
        buildingRoomMap["4430"] = incrementNum(count : &count)
        buildingRoomMap["4432"] = count
        buildingRoomMap["4436"] = count
        buildingRoomMap["4438"] = count
        
        buildingRoomMap["stairs1"] = incrementNum(count: &count)
        buildingRoomMap["stairs2"] = incrementNum(count: &count)
        buildingRoomMap["stairs3"] = incrementNum(count: &count)
        buildingRoomMap["stairs4"] = incrementNum(count: &count)
        buildingRoomMap["stairs5"] = incrementNum(count: &count)
    }
    
    private func initbuildingRoomMap() {
        initEECSBuildingFloor1()
        initEECSBuildingFloor2()
        initEECSBuildingFloor3()
        initEECSBuildingFloor4()
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
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1234")] = Point(x: 1500, y: 1000) // Room 1234
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "1325")] = Point(x: 2565, y: 1200) // Room 1325
        buildingPointMap[Building.roomMap.getRoomValue(room: "1333M")] = Point(x: 2565, y: 1200) // Room 1333M
        buildingPointMap[Building.roomMap.getRoomValue(room: "1324W")] = Point(x: 2565, y: 1200) // Room 1324W
        buildingPointMap[Building.roomMap.getRoomValue(room: "1334")] = Point(x: 2565, y: 1200) // Room 1334
        buildingPointMap[Building.roomMap.getRoomValue(room: "1336")] = Point(x: 2565, y: 1200) // Room 1336
        buildingPointMap[Building.roomMap.getRoomValue(room: "1348")] = Point(x: 2565, y: 1200) // Room 1348
        buildingPointMap[Building.roomMap.getRoomValue(room: "1332")] = Point(x: 2565, y: 1200) // Room 1332
        buildingPointMap[Building.roomMap.getRoomValue(room: "1322A")] = Point(x: 2565, y: 1200) // Room 1322A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1322C")] = Point(x: 2565, y: 1200) // Room 1322C
        buildingPointMap[Building.roomMap.getRoomValue(room: "14C9")] = Point(x: 2565, y: 1200) // Room 14C9
        buildingPointMap[Building.roomMap.getRoomValue(room: "1436")] = Point(x: 2565, y: 1200) // Room 1436
        buildingPointMap[Building.roomMap.getRoomValue(room: "1400")] = Point(x: 2565, y: 1200) // Room 1400
        buildingPointMap[Building.roomMap.getRoomValue(room: "1401A")] = Point(x: 2565, y: 1200) // Room 1401A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1401B")] = Point(x: 2565, y: 1200) // Room 1401B
        buildingPointMap[Building.roomMap.getRoomValue(room: "1403")] = Point(x: 2565, y: 1200) // Room 1403
        buildingPointMap[Building.roomMap.getRoomValue(room: "1406")] = Point(x: 2565, y: 1200) // Room 1406
        buildingPointMap[Building.roomMap.getRoomValue(room: "1410")] = Point(x: 2565, y: 1200) // Room 1410
        buildingPointMap[Building.roomMap.getRoomValue(room: "1410A")] = Point(x: 2565, y: 1200) // Room 1410A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1411A")] = Point(x: 2565, y: 1200) // Room 1411A
        buildingPointMap[Building.roomMap.getRoomValue(room: "1412")] = Point(x: 2565, y: 1200) // Room 1412
        buildingPointMap[Building.roomMap.getRoomValue(room: "1414")] = Point(x: 2565, y: 1200) // Room 1414
        buildingPointMap[Building.roomMap.getRoomValue(room: "1411")] = Point(x: 2565, y: 1200) // Room 1411
        buildingPointMap[Building.roomMap.getRoomValue(room: "1417")] = Point(x: 2565, y: 1200) // Room 1417
        buildingPointMap[Building.roomMap.getRoomValue(room: "1421")] = Point(x: 2565, y: 1200) // Room 1421
        buildingPointMap[Building.roomMap.getRoomValue(room: "1427")] = Point(x: 2565, y: 1200) // Room 1427
        buildingPointMap[Building.roomMap.getRoomValue(room: "1437")] = Point(x: 2565, y: 1200) // Room 1437
        buildingPointMap[Building.roomMap.getRoomValue(room: "1428")] = Point(x: 2565, y: 1200) // Room 1428
        buildingPointMap[Building.roomMap.getRoomValue(room: "1428A")] = Point(x: 2565, y: 1200) // Room 1428A
        buildingPointMap[Building.roomMap.getRoomValue(room: "14C7")] = Point(x: 2565, y: 1200) // Room 14C7
        buildingPointMap[Building.roomMap.getRoomValue(room: "14C4")] = Point(x: 2565, y: 1200) // Room 14C4
        buildingPointMap[Building.roomMap.getRoomValue(room: "1440")] = Point(x: 2565, y: 1200) // Room 1440
        buildingPointMap[Building.roomMap.getRoomValue(room: "1440E")] = Point(x: 2565, y: 1200) // Room 1440E
        buildingPointMap[Building.roomMap.getRoomValue(room: "1440S")] = Point(x: 2565, y: 1200) // Room 1440S
        buildingPointMap[Building.roomMap.getRoomValue(room: "1445")] = Point(x: 2565, y: 1200) // Room 1445
        buildingPointMap[Building.roomMap.getRoomValue(room: "1445S")] = Point(x: 2565, y: 1200) // Room 1445S
        buildingPointMap[Building.roomMap.getRoomValue(room: "1448")] = Point(x: 2565, y: 1200) // Room 1448
        buildingPointMap[Building.roomMap.getRoomValue(room: "1450")] = Point(x: 2565, y: 1200) // Room 1450
        buildingPointMap[Building.roomMap.getRoomValue(room: "1452")] = Point(x: 2565, y: 1200) // Room 1452
        buildingPointMap[Building.roomMap.getRoomValue(room: "1454")] = Point(x: 2565, y: 1200) // Room 1454
        buildingPointMap[Building.roomMap.getRoomValue(room: "1456")] = Point(x: 2565, y: 1200) // Room 1456
        buildingPointMap[Building.roomMap.getRoomValue(room: "1460")] = Point(x: 2565, y: 1200) // Room 1460
        buildingPointMap[Building.roomMap.getRoomValue(room: "1462")] = Point(x: 2565, y: 1200) // Room 1462
        buildingPointMap[Building.roomMap.getRoomValue(room: "1471")] = Point(x: 2565, y: 1200) // Room 1471
        buildingPointMap[Building.roomMap.getRoomValue(room: "1473")] = Point(x: 2565, y: 1200) // Room 1473
        buildingPointMap[Building.roomMap.getRoomValue(room: "1475")] = Point(x: 2565, y: 1200) // Room 1475
        buildingPointMap[Building.roomMap.getRoomValue(room: "1479")] = Point(x: 2565, y: 1200) // Room 1479
        buildingPointMap[Building.roomMap.getRoomValue(room: "1500")] = Point(x: 2565, y: 1200) // Room 1500
        
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs1")] = Point(x: 2565, y: 1200) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs2")] = Point(x: 2565, y: 1200) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs3")] = Point(x: 2565, y: 1200) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs4")] = Point(x: 2565, y: 1200) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs5")] = Point(x: 2565, y: 1200) // Stairs 5
        
        
    }
    
    private func initEECSBuildingFloor2() {
        buildingPointMap[Building.roomMap.getRoomValue(room: "2001")] = Point(x: 500, y: 500) // Room 2001
        buildingPointMap[Building.roomMap.getRoomValue(room: "2003")] = Point(x: 500, y: 500) // Room 2003
        buildingPointMap[Building.roomMap.getRoomValue(room: "2111")] = Point(x: 500, y: 500) // Room 2111
        buildingPointMap[Building.roomMap.getRoomValue(room: "2114")] = Point(x: 500, y: 500) // Room 2114
        buildingPointMap[Building.roomMap.getRoomValue(room: "2200")] = Point(x: 500, y: 500) // Room 2200
        buildingPointMap[Building.roomMap.getRoomValue(room: "2210")] = Point(x: 500, y: 500) // Room 2210
        buildingPointMap[Building.roomMap.getRoomValue(room: "2211")] = Point(x: 500, y: 500) // Room 2211
        buildingPointMap[Building.roomMap.getRoomValue(room: "2222")] = Point(x: 500, y: 500) // Room 2222
        buildingPointMap[Building.roomMap.getRoomValue(room: "2223")] = Point(x: 500, y: 500) // Room 2223
        buildingPointMap[Building.roomMap.getRoomValue(room: "2228")] = Point(x: 500, y: 500) // Room 2228
        buildingPointMap[Building.roomMap.getRoomValue(room: "2237")] = Point(x: 500, y: 500) // Room 2237
        buildingPointMap[Building.roomMap.getRoomValue(room: "2301")] = Point(x: 500, y: 500) // Room 2301
        buildingPointMap[Building.roomMap.getRoomValue(room: "2312")] = Point(x: 500, y: 500) // Room 2312
        buildingPointMap[Building.roomMap.getRoomValue(room: "2327")] = Point(x: 500, y: 500) // Room 2327
        buildingPointMap[Building.roomMap.getRoomValue(room: "2332")] = Point(x: 500, y: 500) // Room 2332
        buildingPointMap[Building.roomMap.getRoomValue(room: "2340")] = Point(x: 500, y: 500) // Room 2340
        buildingPointMap[Building.roomMap.getRoomValue(room: "2341")] = Point(x: 500, y: 500) // Room 2341
        buildingPointMap[Building.roomMap.getRoomValue(room: "2310")] = Point(x: 500, y: 500) // Room 2310
        buildingPointMap[Building.roomMap.getRoomValue(room: "2310A")] = Point(x: 500, y: 500) // Room 2310A
        buildingPointMap[Building.roomMap.getRoomValue(room: "2401")] = Point(x: 500, y: 500) // Room 2401
        buildingPointMap[Building.roomMap.getRoomValue(room: "2417")] = Point(x: 500, y: 500) // Room 2417
        buildingPointMap[Building.roomMap.getRoomValue(room: "2421")] = Point(x: 500, y: 500) // Room 2421
        buildingPointMap[Building.roomMap.getRoomValue(room: "2420")] = Point(x: 500, y: 500) // Room 2420
        buildingPointMap[Building.roomMap.getRoomValue(room: "2422")] = Point(x: 500, y: 500) // Room 2422
        buildingPointMap[Building.roomMap.getRoomValue(room: "2426")] = Point(x: 500, y: 500) // Room 2426
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs1")] = Point(x: 500, y: 500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs2")] = Point(x: 500, y: 500) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs3")] = Point(x: 500, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs4")] = Point(x: 500, y: 500) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs5")] = Point(x: 500, y: 500) // Stairs 5
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
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs1")] = Point(x: 500, y: 500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs2")] = Point(x: 500, y: 500) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs3")] = Point(x: 500, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs4")] = Point(x: 500, y: 500) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs5")] = Point(x: 500, y: 500) // Stairs 5
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
        
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs1")] = Point(x: 500, y: 500) // Stairs 1
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs2")] = Point(x: 500, y: 500) // Stairs 2
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs3")] = Point(x: 500, y: 500) // Stairs 3
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs4")] = Point(x: 500, y: 500) // Stairs 4
        buildingPointMap[Building.roomMap.getRoomValue(room: "stairs5")] = Point(x: 500, y: 500) // Stairs 5
    }
    
    private func initEECSBuildingPointMap(_ floor : Int) {
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
    
    private func initGGBrownPointMap(_ floor : Int) {
        
    }
    
}

