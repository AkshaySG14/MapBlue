//
//  EECSNodeHandler.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/4/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

import UIKit

class EECSNodeHandler {
    private var nodes: [Point] = []
    
    func initNodes (_ floor : Int) {
        // Cleares node list.
        nodes.removeAll()
        
        switch (floor) {
        case 1:
            initEECSBuildingFloor1()
            initEECSBuildingFloor1Neighbors()
            break
        case 2:
            initEECSBuildingFloor2()
            initEECSBuildingFloor2Neighbors()
            break
        case 3:
            initEECSBuildingFloor3()
            initEECSBuildingFloor3Neighbors()
            break
        case 4:
            initEECSBuildingFloor4()
            initEECSBuildingFloor4Neighbors()
            break
        default:
            return
        }
    }

    // Silly workaround because += operator returns a void in Swift.
    private func incrementNum(count : inout Int) -> Int {
        count += 1
        return count
    }
    
    // Auxiliary function so that act of adding neighbors is a mutual action.
    func addMutualNeighbors(one : Point, two : Point) {
        one.neighbors.append(two)
        two.neighbors.append(one)
    }
    
    // Point nodes.
    func getNodes() -> [Point] {
        return nodes
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
    
    private func initEECSBuildingFloor1 () {
        nodes.append(Point(x: 75, y: 887.5)) // 0
        nodes.append(Point(x: 225, y: 887.5)) // 1
        nodes.append(Point(x: 375, y: 887.5)) // 2
        nodes.append(Point(x: 525, y: 887.5)) // 3
        nodes.append(Point(x: 675, y: 887.5)) // 4
        nodes.append(Point(x: 825, y: 887.5)) // 5
        nodes.append(Point(x: 975, y: 887.5)) // 6
        nodes.append(Point(x: 1050, y: 810)) // 7
        nodes.append(Point(x: 1150, y: 810)) // 8
        nodes.append(Point(x: 1275, y: 810)) // 9
        nodes.append(Point(x: 1400, y: 810)) // 10
        nodes.append(Point(x: 1525, y: 810)) // 11
        nodes.append(Point(x: 1650, y: 810)) // 12
        nodes.append(Point(x: 1650, y: 677.5)) // 13
        nodes.append(Point(x: 1650, y: 540)) // 14
        nodes.append(Point(x: 1775, y: 540)) // 15
        nodes.append(Point(x: 1900, y: 540)) // 16
        nodes.append(Point(x: 2025, y: 540)) // 17
        nodes.append(Point(x: 2150, y: 540)) // 18
        nodes.append(Point(x: 2275, y: 540)) // 19
        nodes.append(Point(x: 2400, y: 540)) // 20
        nodes.append(Point(x: 2525, y: 540)) // 21
        nodes.append(Point(x: 2650, y: 540)) // 22
        nodes.append(Point(x: 2750, y: 540)) // 23
        nodes.append(Point(x: 2750, y: 415)) // 24
        nodes.append(Point(x: 2750, y: 290)) // 25
        nodes.append(Point(x: 2750, y: 165)) // 26
        nodes.append(Point(x: 2750, y: 40)) // 27
        nodes.append(Point(x: 2750, y: 665)) // 28
        nodes.append(Point(x: 2750, y: 790)) // 29
        nodes.append(Point(x: 2750, y: 900)) // 30
        nodes.append(Point(x: 2750, y: 1000)) // 31
        nodes.append(Point(x: 2650, y: 1000)) // 32
        nodes.append(Point(x: 2525, y: 1000)) // 33
        nodes.append(Point(x: 2400, y: 1000)) // 34
        nodes.append(Point(x: 2400, y: 425)) // 35
        nodes.append(Point(x: 2275, y: 1000)) // 36
        nodes.append(Point(x: 2150, y: 1000)) // 37
        nodes.append(Point(x: 2025, y: 1000)) // 38
        nodes.append(Point(x: 1900, y: 1000)) // 39
        nodes.append(Point(x: 1775, y: 1000)) // 40
        nodes.append(Point(x: 1650, y: 1000)) // 41
        nodes.append(Point(x: 1525, y: 1000)) // 42
        nodes.append(Point(x: 1400, y: 1000)) // 43
        nodes.append(Point(x: 1275, y: 1000)) // 44
        nodes.append(Point(x: 1275, y: 900)) // 45
        nodes.append(Point(x: 2025, y: 665)) // 46
        nodes.append(Point(x: 2025, y: 790)) // 47
        nodes.append(Point(x: 2025, y: 915)) // 48
        nodes.append(Point(x: 1650, y: 900)) // 49
        nodes.append(Point(x: 1833, y: 1125)) // 50
        nodes.append(Point(x: 1833, y: 1125)) // 51. Note that this is the exact same point as the previous as removal of this point would affect those in front.
        nodes.append(Point(x: 2400, y: 1100)) // 52
        nodes.append(Point(x: 2400, y: 1225)) // 53
        nodes.append(Point(x: 2400, y: 1350)) // 54
        nodes.append(Point(x: 2475, y: 1350)) // 55
        nodes.append(Point(x: 2475, y: 1450)) // 56
        nodes.append(Point(x: 2475, y: 1550)) // 57
        nodes.append(Point(x: 2475, y: 1650)) // 58
        nodes.append(Point(x: 2385, y: 1650)) // 59
        nodes.append(Point(x: 2025, y: 1175)) // 60
        nodes.append(Point(x: 1275, y: 1165)) // 61
        nodes.append(Point(x: 1275, y: 1250)) // 62
        nodes.append(Point(x: 1400, y: 1165)) // 63
        nodes.append(Point(x: 1525, y: 1165)) // 64
        nodes.append(Point(x: 1650, y: 1165)) // 65
    }
    
    private func initEECSBuildingFloor1Neighbors() {
        addMutualNeighbors(one: nodes[0], two: nodes[1])
        addMutualNeighbors(one: nodes[1], two: nodes[2])
        addMutualNeighbors(one: nodes[2], two: nodes[3])
        addMutualNeighbors(one: nodes[3], two: nodes[4])
        addMutualNeighbors(one: nodes[4], two: nodes[5])
        addMutualNeighbors(one: nodes[5], two: nodes[6])
        addMutualNeighbors(one: nodes[6], two: nodes[7])
        addMutualNeighbors(one: nodes[7], two: nodes[8])
        addMutualNeighbors(one: nodes[8], two: nodes[9])
        addMutualNeighbors(one: nodes[8], two: nodes[9])
        addMutualNeighbors(one: nodes[9], two: nodes[10])
        addMutualNeighbors(one: nodes[9], two: nodes[45])
        addMutualNeighbors(one: nodes[10], two: nodes[11])
        addMutualNeighbors(one: nodes[11], two: nodes[12])
        addMutualNeighbors(one: nodes[12], two: nodes[13])
        addMutualNeighbors(one: nodes[12], two: nodes[49])
        addMutualNeighbors(one: nodes[13], two: nodes[14])
        addMutualNeighbors(one: nodes[14], two: nodes[15])
        addMutualNeighbors(one: nodes[15], two: nodes[16])
        addMutualNeighbors(one: nodes[16], two: nodes[17])
        addMutualNeighbors(one: nodes[17], two: nodes[18])
        addMutualNeighbors(one: nodes[17], two: nodes[46])
        addMutualNeighbors(one: nodes[18], two: nodes[19])
        addMutualNeighbors(one: nodes[19], two: nodes[20])
        addMutualNeighbors(one: nodes[20], two: nodes[21])
        addMutualNeighbors(one: nodes[20], two: nodes[35])
        addMutualNeighbors(one: nodes[21], two: nodes[22])
        addMutualNeighbors(one: nodes[22], two: nodes[23])
        addMutualNeighbors(one: nodes[23], two: nodes[24])
        addMutualNeighbors(one: nodes[23], two: nodes[28])
        addMutualNeighbors(one: nodes[24], two: nodes[25])
        addMutualNeighbors(one: nodes[25], two: nodes[26])
        addMutualNeighbors(one: nodes[26], two: nodes[27])
        addMutualNeighbors(one: nodes[28], two: nodes[29])
        addMutualNeighbors(one: nodes[29], two: nodes[30])
        addMutualNeighbors(one: nodes[30], two: nodes[31])
        addMutualNeighbors(one: nodes[31], two: nodes[32])
        addMutualNeighbors(one: nodes[32], two: nodes[33])
        addMutualNeighbors(one: nodes[33], two: nodes[34])
        addMutualNeighbors(one: nodes[34], two: nodes[36])
        addMutualNeighbors(one: nodes[34], two: nodes[52])
        addMutualNeighbors(one: nodes[36], two: nodes[37])
        addMutualNeighbors(one: nodes[37], two: nodes[38])
        addMutualNeighbors(one: nodes[38], two: nodes[39])
        addMutualNeighbors(one: nodes[38], two: nodes[48])
        addMutualNeighbors(one: nodes[38], two: nodes[60])
        addMutualNeighbors(one: nodes[39], two: nodes[50])
        addMutualNeighbors(one: nodes[39], two: nodes[40])
        addMutualNeighbors(one: nodes[40], two: nodes[41])
        addMutualNeighbors(one: nodes[40], two: nodes[51])
        addMutualNeighbors(one: nodes[41], two: nodes[42])
        addMutualNeighbors(one: nodes[41], two: nodes[49])
        addMutualNeighbors(one: nodes[42], two: nodes[43])
        addMutualNeighbors(one: nodes[43], two: nodes[44])
        addMutualNeighbors(one: nodes[44], two: nodes[45])
        addMutualNeighbors(one: nodes[44], two: nodes[61])
        addMutualNeighbors(one: nodes[48], two: nodes[47])
        addMutualNeighbors(one: nodes[47], two: nodes[46])
        addMutualNeighbors(one: nodes[50], two: nodes[51])
        addMutualNeighbors(one: nodes[50], two: nodes[60])
        addMutualNeighbors(one: nodes[51], two: nodes[65])
        addMutualNeighbors(one: nodes[52], two: nodes[53])
        addMutualNeighbors(one: nodes[53], two: nodes[54])
        addMutualNeighbors(one: nodes[54], two: nodes[55])
        addMutualNeighbors(one: nodes[55], two: nodes[56])
        addMutualNeighbors(one: nodes[56], two: nodes[57])
        addMutualNeighbors(one: nodes[57], two: nodes[58])
        addMutualNeighbors(one: nodes[58], two: nodes[59])
        addMutualNeighbors(one: nodes[61], two: nodes[62])
        addMutualNeighbors(one: nodes[61], two: nodes[63])
        addMutualNeighbors(one: nodes[63], two: nodes[64])
        addMutualNeighbors(one: nodes[64], two: nodes[65])
    }
    
    private  func initEECSBuildingFloor2() {
        nodes.append(Point(x: 285, y: 740)) // 0
        nodes.append(Point(x: 285, y: 655)) // 1
        nodes.append(Point(x: 285, y: 580)) // 2 ----above atrium
        nodes.append(Point(x: 285, y: 500)) // 3
        nodes.append(Point(x: 285, y: 440)) // 4
        nodes.append(Point(x: 285, y: 365)) // 5
        nodes.append(Point(x: 285, y: 290)) // 6
        nodes.append(Point(x: 360, y: 290)) // 7
        nodes.append(Point(x: 435, y: 290)) // 8
        nodes.append(Point(x: 510, y: 290)) // 9
        nodes.append(Point(x: 580, y: 290)) // 10 ----- top inter first colum
        nodes.append(Point(x: 660, y: 290)) // 11
        nodes.append(Point(x: 735, y: 290)) // 12
        nodes.append(Point(x: 810, y: 290)) // 13
        nodes.append(Point(x: 870, y: 290)) // 14 -----inter sec col
        nodes.append(Point(x: 950, y: 290)) // 15
        nodes.append(Point(x: 1035, y: 290)) // 16
        nodes.append(Point(x: 1110, y: 290)) // 17
        nodes.append(Point(x: 1160, y: 290)) // 18 -----inter thir col
        nodes.append(Point(x: 1270, y: 290)) // 19
        nodes.append(Point(x: 360, y: 580)) // 20 row above atrium
        nodes.append(Point(x: 435, y: 580)) // 21
        nodes.append(Point(x: 510, y: 580)) // 22
        nodes.append(Point(x: 580, y: 580)) // 23 ---intersect with first col
        nodes.append(Point(x: 660, y: 580)) // 24
        nodes.append(Point(x: 735, y: 580)) // 25
        nodes.append(Point(x: 810, y: 580)) // 26
        nodes.append(Point(x: 870, y: 580)) // 27 ----intersect with sec col
        nodes.append(Point(x: 950, y: 580)) // 28
        nodes.append(Point(x: 1035, y: 580)) // 29
        nodes.append(Point(x: 1110, y: 580)) // 30
        nodes.append(Point(x: 1160, y: 580)) // 31 ----interesect with thir col
        nodes.append(Point(x: 335, y: 740)) // 32
        nodes.append(Point(x: 335, y: 785)) // 33
        nodes.append(Point(x: 1210, y: 290)) // 34 ---filler from before
        nodes.append(Point(x: 335, y: 785)) // 35 ----2246 above row
        nodes.append(Point(x: 416, y: 785)) // 36
        nodes.append(Point(x: 497, y: 785)) // 37
        nodes.append(Point(x: 580, y: 785)) // 38 --inter first col
        nodes.append(Point(x: 660, y: 785)) // 39
        nodes.append(Point(x: 735, y: 785)) // 40
        nodes.append(Point(x: 810, y: 785)) // 41
        nodes.append(Point(x: 870, y: 785)) // 42 ----intersect with sec col
        nodes.append(Point(x: 950, y: 785)) // 43
        nodes.append(Point(x: 1035, y: 785)) // 44
        nodes.append(Point(x: 1110, y: 785)) // 45
        nodes.append(Point(x: 1160, y: 785)) // 46 ----interesect with thir col
        nodes.append(Point(x: 580, y: 365)) // 47--- first col down
        nodes.append(Point(x: 580, y: 440)) // 48
        nodes.append(Point(x: 580, y: 500)) // 49
        nodes.append(Point(x: 580, y: 655)) // 50
        nodes.append(Point(x: 580, y: 720)) // 51
        nodes.append(Point(x: 870, y: 365)) // 52 --- sec col down
        nodes.append(Point(x: 870, y: 440)) // 53
        nodes.append(Point(x: 870, y: 500)) // 54
        nodes.append(Point(x: 870, y: 655)) // 55
        nodes.append(Point(x: 870, y: 720)) // 56
        nodes.append(Point(x: 870, y: 860)) // 57
        nodes.append(Point(x: 870, y: 935)) // 58
        nodes.append(Point(x: 950, y: 935)) // 59 ---bottom small col
        nodes.append(Point(x: 1035, y: 935)) // 60
        nodes.append(Point(x: 1110, y: 935)) // 61
        nodes.append(Point(x: 1160, y: 935)) // 62 ---intersect thir col
        nodes.append(Point(x: 1210, y: 935)) // 63
        nodes.append(Point(x: 1160, y: 365)) // 64 ---thir col down
        nodes.append(Point(x: 1160, y: 440)) // 65
        nodes.append(Point(x: 1160, y: 500)) // 66
        nodes.append(Point(x: 1160, y: 655)) // 67
        nodes.append(Point(x: 1160, y: 720)) // 68
        nodes.append(Point(x: 1160, y: 860)) // 69
        nodes.append(Point(x: 1210, y: 1010)) // 70
        nodes.append(Point(x: 1210, y: 1085)) // 71
        nodes.append(Point(x: 1210, y: 1180)) // 72
        nodes.append(Point(x: 1135, y: 1180)) // 73
        nodes.append(Point(x: 1135, y: 1255)) // 74
        nodes.append(Point(x: 1135, y: 1330)) // 75
    }
    
    private func initEECSBuildingFloor2Neighbors() {
        addMutualNeighbors(one: nodes[0], two: nodes[1])
        addMutualNeighbors(one: nodes[0], two: nodes[32])
        addMutualNeighbors(one: nodes[1], two: nodes[2])
        addMutualNeighbors(one: nodes[2], two: nodes[3])
        addMutualNeighbors(one: nodes[3], two: nodes[4])
        addMutualNeighbors(one: nodes[4], two: nodes[5])
        addMutualNeighbors(one: nodes[5], two: nodes[6])
        addMutualNeighbors(one: nodes[6], two: nodes[7])
        addMutualNeighbors(one: nodes[7], two: nodes[8])
        addMutualNeighbors(one: nodes[8], two: nodes[9])
        addMutualNeighbors(one: nodes[9], two: nodes[10])
        addMutualNeighbors(one: nodes[10], two: nodes[11])
        addMutualNeighbors(one: nodes[11], two: nodes[12])
        addMutualNeighbors(one: nodes[12], two: nodes[13])
        addMutualNeighbors(one: nodes[13], two: nodes[14])
        addMutualNeighbors(one: nodes[14], two: nodes[15])
        addMutualNeighbors(one: nodes[15], two: nodes[16])
        addMutualNeighbors(one: nodes[16], two: nodes[17])
        addMutualNeighbors(one: nodes[17], two: nodes[18])
        addMutualNeighbors(one: nodes[18], two: nodes[34])
        addMutualNeighbors(one: nodes[34], two: nodes[19])
        addMutualNeighbors(one: nodes[2], two: nodes[20])
        addMutualNeighbors(one: nodes[20], two: nodes[21])
        addMutualNeighbors(one: nodes[21], two: nodes[22])
        addMutualNeighbors(one: nodes[22], two: nodes[23])
        addMutualNeighbors(one: nodes[23], two: nodes[24])
        addMutualNeighbors(one: nodes[24], two: nodes[25])
        addMutualNeighbors(one: nodes[25], two: nodes[26])
        addMutualNeighbors(one: nodes[26], two: nodes[27])
        addMutualNeighbors(one: nodes[27], two: nodes[28])
        addMutualNeighbors(one: nodes[28], two: nodes[29])
        addMutualNeighbors(one: nodes[29], two: nodes[30])
        addMutualNeighbors(one: nodes[30], two: nodes[31])
        
        addMutualNeighbors(one: nodes[32], two: nodes[33])
        addMutualNeighbors(one: nodes[33], two: nodes[34])
        addMutualNeighbors(one: nodes[34], two: nodes[35])
        addMutualNeighbors(one: nodes[35], two: nodes[36])
        addMutualNeighbors(one: nodes[36], two: nodes[37])
        addMutualNeighbors(one: nodes[37], two: nodes[38])
        addMutualNeighbors(one: nodes[38], two: nodes[39])
        addMutualNeighbors(one: nodes[39], two: nodes[40])
        addMutualNeighbors(one: nodes[40], two: nodes[41])
        addMutualNeighbors(one: nodes[41], two: nodes[42])
        addMutualNeighbors(one: nodes[42], two: nodes[43])
        addMutualNeighbors(one: nodes[43], two: nodes[44])
        addMutualNeighbors(one: nodes[44], two: nodes[45])
        addMutualNeighbors(one: nodes[45], two: nodes[46])
        addMutualNeighbors(one: nodes[47], two: nodes[10])
        addMutualNeighbors(one: nodes[47], two: nodes[48])
        addMutualNeighbors(one: nodes[48], two: nodes[49])
        addMutualNeighbors(one: nodes[49], two: nodes[23])
        addMutualNeighbors(one: nodes[50], two: nodes[23])
        addMutualNeighbors(one: nodes[50], two: nodes[51])
        addMutualNeighbors(one: nodes[51], two: nodes[38])
        addMutualNeighbors(one: nodes[52], two: nodes[14])
        addMutualNeighbors(one: nodes[52], two: nodes[53])
        addMutualNeighbors(one: nodes[53], two: nodes[54])
        addMutualNeighbors(one: nodes[54], two: nodes[27])
        addMutualNeighbors(one: nodes[55], two: nodes[27])
        addMutualNeighbors(one: nodes[55], two: nodes[56])
        addMutualNeighbors(one: nodes[56], two: nodes[42])
        addMutualNeighbors(one: nodes[57], two: nodes[42])
        addMutualNeighbors(one: nodes[57], two: nodes[58])
        addMutualNeighbors(one: nodes[58], two: nodes[59])
        addMutualNeighbors(one: nodes[59], two: nodes[60])
        addMutualNeighbors(one: nodes[60], two: nodes[61])
        addMutualNeighbors(one: nodes[61], two: nodes[62])
        addMutualNeighbors(one: nodes[62], two: nodes[63])
        addMutualNeighbors(one: nodes[63], two: nodes[69])
        addMutualNeighbors(one: nodes[64], two: nodes[18])
        addMutualNeighbors(one: nodes[64], two: nodes[65])
        addMutualNeighbors(one: nodes[65], two: nodes[66])
        addMutualNeighbors(one: nodes[66], two: nodes[31])
        addMutualNeighbors(one: nodes[31], two: nodes[67])
        addMutualNeighbors(one: nodes[67], two: nodes[68])
        addMutualNeighbors(one: nodes[68], two: nodes[46])
        addMutualNeighbors(one: nodes[46], two: nodes[69])
        addMutualNeighbors(one: nodes[63], two: nodes[70])
        addMutualNeighbors(one: nodes[70], two: nodes[71])
        addMutualNeighbors(one: nodes[71], two: nodes[72])
        addMutualNeighbors(one: nodes[72], two: nodes[73])
        addMutualNeighbors(one: nodes[73], two: nodes[74])
        addMutualNeighbors(one: nodes[74], two: nodes[75])
    }
    
    private  func initEECSBuildingFloor3() {
        nodes.append(Point(x: 315, y: 625)) // 0
        nodes.append(Point(x: 315, y: 540)) // 1
        nodes.append(Point(x: 315, y: 465)) // 2 ----above atrium
        nodes.append(Point(x: 315, y: 380)) // 3
        nodes.append(Point(x: 315, y: 300)) // 4
        nodes.append(Point(x: 315, y: 230)) // 5
        nodes.append(Point(x: 315, y: 160)) // 6
        nodes.append(Point(x: 380, y: 160)) // 7 ---top row
        nodes.append(Point(x: 445, y: 160)) // 8
        nodes.append(Point(x: 520, y: 160)) // 9
        nodes.append(Point(x: 585, y: 160)) // 10
        nodes.append(Point(x: 655, y: 160)) // 11 ---col 1
        nodes.append(Point(x: 715, y: 160)) // 12
        nodes.append(Point(x: 775, y: 160)) // 13
        nodes.append(Point(x: 850, y: 160)) // 14
        nodes.append(Point(x: 925, y: 160)) // 15
        nodes.append(Point(x: 1000, y: 160)) // 16 ---col 2
        nodes.append(Point(x: 1065, y: 160)) // 17
        nodes.append(Point(x: 1140, y: 160)) // 18
        nodes.append(Point(x: 1215, y: 160)) // 19
        nodes.append(Point(x: 1290, y: 160)) // 20
        nodes.append(Point(x: 1345, y: 160)) // 21 ---col 3
        nodes.append(Point(x: 1435, y: 160)) // 22
        nodes.append(Point(x: 1510, y: 160)) // 23
        nodes.append(Point(x: 1510, y: 235)) // 24 --top corner
        nodes.append(Point(x: 1510, y: 300)) // 25
        nodes.append(Point(x: 1510, y: 365)) // 26
        nodes.append(Point(x: 380, y: 465)) // 27 ----above atrium row
        nodes.append(Point(x: 445, y: 465)) // 28
        nodes.append(Point(x: 520, y: 465)) // 29
        nodes.append(Point(x: 585, y: 465)) // 30
        nodes.append(Point(x: 655, y: 465)) // 31 ---col 1
        nodes.append(Point(x: 715, y: 465)) // 32
        nodes.append(Point(x: 775, y: 465)) // 33
        nodes.append(Point(x: 850, y: 465)) // 34
        nodes.append(Point(x: 925, y: 465)) // 35
        nodes.append(Point(x: 1000, y: 465)) // 36 ---col 2
        nodes.append(Point(x: 1065, y: 465)) // 37
        nodes.append(Point(x: 1140, y: 465)) // 38
        nodes.append(Point(x: 1215, y: 465)) // 39
        nodes.append(Point(x: 1290, y: 465)) // 40
        nodes.append(Point(x: 1345, y: 465)) // 41 ---col 3
        nodes.append(Point(x: 370, y: 625)) // 42
        nodes.append(Point(x: 370, y: 685)) // 43
        nodes.append(Point(x: 445, y: 685)) // 44 --- bottom row
        nodes.append(Point(x: 520, y: 685)) // 45
        nodes.append(Point(x: 585, y: 685)) // 46
        nodes.append(Point(x: 655, y: 685)) // 47 ---col 1
        nodes.append(Point(x: 715, y: 685)) // 48
        nodes.append(Point(x: 775, y: 685)) // 49
        nodes.append(Point(x: 850, y: 685)) // 50
        nodes.append(Point(x: 925, y: 685)) // 51
        nodes.append(Point(x: 1000, y: 685)) // 52 ---col 2
        nodes.append(Point(x: 1065, y: 685)) // 53
        nodes.append(Point(x: 1140, y: 685)) // 54
        nodes.append(Point(x: 1215, y: 685)) // 55
        nodes.append(Point(x: 1290, y: 685)) // 56
        nodes.append(Point(x: 1345, y: 685)) // 57 ---col 3
        nodes.append(Point(x: 655, y: 230)) // 58 ---col 1 down
        nodes.append(Point(x: 655, y: 300)) // 59
        nodes.append(Point(x: 655, y: 380)) // 60
        nodes.append(Point(x: 655, y: 540)) // 61
        nodes.append(Point(x: 655, y: 625)) // 62
        nodes.append(Point(x: 1000, y: 230)) // 63 ---col 2 down
        nodes.append(Point(x: 1000, y: 300)) // 64
        nodes.append(Point(x: 1000, y: 380)) // 65
        nodes.append(Point(x: 1000, y: 540)) // 66
        nodes.append(Point(x: 1000, y: 625)) // 67
        nodes.append(Point(x: 1000, y: 760)) // 68
        nodes.append(Point(x: 1000, y: 840)) // 69
        nodes.append(Point(x: 1065, y: 840)) // 70 -- small row bottom
        nodes.append(Point(x: 1140, y: 840)) // 71
        nodes.append(Point(x: 1215, y: 840)) // 72
        nodes.append(Point(x: 1290, y: 840)) // 73
        nodes.append(Point(x: 1345, y: 840)) // 74 ---col 3
        nodes.append(Point(x: 1405, y: 840)) // 75 --down 3005 col
        nodes.append(Point(x: 1405, y: 905)) // 76
        nodes.append(Point(x: 1405, y: 980)) // 77
        nodes.append(Point(x: 1405, y: 1055)) // 78
        nodes.append(Point(x: 1360, y: 1055)) // 79
        nodes.append(Point(x: 1320, y: 1055)) // 80
        nodes.append(Point(x: 1320, y: 1120)) // 81
        nodes.append(Point(x: 1320, y: 1190)) // 82
        nodes.append(Point(x: 1320, y: 1260)) // 83
        nodes.append(Point(x: 1345, y: 230)) // 84 ---col 3 down
        nodes.append(Point(x: 1345, y: 300)) // 85
        nodes.append(Point(x: 1345, y: 375)) // 86
        nodes.append(Point(x: 1345, y: 540)) // 87
        nodes.append(Point(x: 1345, y: 625)) // 88
        nodes.append(Point(x: 1345, y: 760)) // 89
        nodes.append(Point(x: 1435, y: 375)) // 90
    }
    
    private func initEECSBuildingFloor3Neighbors() {
        addMutualNeighbors(one: nodes[0], two: nodes[1])
        addMutualNeighbors(one: nodes[0], two: nodes[42])
        addMutualNeighbors(one: nodes[0], two: nodes[43])
        addMutualNeighbors(one: nodes[1], two: nodes[2])
        addMutualNeighbors(one: nodes[2], two: nodes[3])
        addMutualNeighbors(one: nodes[3], two: nodes[4])
        addMutualNeighbors(one: nodes[4], two: nodes[5])
        addMutualNeighbors(one: nodes[5], two: nodes[6])
        addMutualNeighbors(one: nodes[6], two: nodes[7])
        addMutualNeighbors(one: nodes[7], two: nodes[8])
        addMutualNeighbors(one: nodes[8], two: nodes[9])
        addMutualNeighbors(one: nodes[9], two: nodes[10])
        addMutualNeighbors(one: nodes[10], two: nodes[11])
        addMutualNeighbors(one: nodes[11], two: nodes[12])
        addMutualNeighbors(one: nodes[12], two: nodes[13])
        addMutualNeighbors(one: nodes[13], two: nodes[14])
        addMutualNeighbors(one: nodes[14], two: nodes[15])
        addMutualNeighbors(one: nodes[15], two: nodes[16])
        addMutualNeighbors(one: nodes[16], two: nodes[17])
        addMutualNeighbors(one: nodes[17], two: nodes[18])
        addMutualNeighbors(one: nodes[18], two: nodes[19])
        addMutualNeighbors(one: nodes[19], two: nodes[20])
        addMutualNeighbors(one: nodes[20], two: nodes[21])
        addMutualNeighbors(one: nodes[21], two: nodes[22])
        addMutualNeighbors(one: nodes[22], two: nodes[23])
        addMutualNeighbors(one: nodes[23], two: nodes[24])
        addMutualNeighbors(one: nodes[24], two: nodes[25])
        addMutualNeighbors(one: nodes[25], two: nodes[26])
        addMutualNeighbors(one: nodes[3], two: nodes[27])
        addMutualNeighbors(one: nodes[27], two: nodes[28])
        addMutualNeighbors(one: nodes[28], two: nodes[29])
        addMutualNeighbors(one: nodes[29], two: nodes[30])
        addMutualNeighbors(one: nodes[30], two: nodes[31])
        addMutualNeighbors(one: nodes[31], two: nodes[32])
        addMutualNeighbors(one: nodes[32], two: nodes[33])
        addMutualNeighbors(one: nodes[33], two: nodes[34])
        addMutualNeighbors(one: nodes[34], two: nodes[35])
        addMutualNeighbors(one: nodes[35], two: nodes[36])
        addMutualNeighbors(one: nodes[36], two: nodes[37])
        addMutualNeighbors(one: nodes[37], two: nodes[38])
        addMutualNeighbors(one: nodes[38], two: nodes[39])
        addMutualNeighbors(one: nodes[39], two: nodes[40])
        addMutualNeighbors(one: nodes[40], two: nodes[41])
        addMutualNeighbors(one: nodes[41], two: nodes[42])
        addMutualNeighbors(one: nodes[42], two: nodes[43])
        addMutualNeighbors(one: nodes[43], two: nodes[44])
        addMutualNeighbors(one: nodes[44], two: nodes[45])
        addMutualNeighbors(one: nodes[45], two: nodes[46])
        addMutualNeighbors(one: nodes[46], two: nodes[47])
        addMutualNeighbors(one: nodes[47], two: nodes[48])
        addMutualNeighbors(one: nodes[48], two: nodes[49])
        addMutualNeighbors(one: nodes[49], two: nodes[50])
        addMutualNeighbors(one: nodes[50], two: nodes[51])
        addMutualNeighbors(one: nodes[51], two: nodes[52])
        addMutualNeighbors(one: nodes[52], two: nodes[53])
        addMutualNeighbors(one: nodes[53], two: nodes[54])
        addMutualNeighbors(one: nodes[54], two: nodes[55])
        addMutualNeighbors(one: nodes[55], two: nodes[56])
        addMutualNeighbors(one: nodes[56], two: nodes[57])
        addMutualNeighbors(one: nodes[58], two: nodes[11])
        addMutualNeighbors(one: nodes[58], two: nodes[59])
        addMutualNeighbors(one: nodes[59], two: nodes[60])
        addMutualNeighbors(one: nodes[60], two: nodes[31])
        addMutualNeighbors(one: nodes[60], two: nodes[61])
        addMutualNeighbors(one: nodes[61], two: nodes[47])
        addMutualNeighbors(one: nodes[63], two: nodes[16])
        addMutualNeighbors(one: nodes[63], two: nodes[64])
        addMutualNeighbors(one: nodes[64], two: nodes[65])
        addMutualNeighbors(one: nodes[65], two: nodes[36])
        addMutualNeighbors(one: nodes[36], two: nodes[66])
        addMutualNeighbors(one: nodes[66], two: nodes[67])
        addMutualNeighbors(one: nodes[67], two: nodes[52])
        addMutualNeighbors(one: nodes[68], two: nodes[52])
        addMutualNeighbors(one: nodes[68], two: nodes[69])
        addMutualNeighbors(one: nodes[69], two: nodes[70])
        addMutualNeighbors(one: nodes[70], two: nodes[71])
        addMutualNeighbors(one: nodes[71], two: nodes[72])
        addMutualNeighbors(one: nodes[72], two: nodes[73])
        addMutualNeighbors(one: nodes[73], two: nodes[74])
        addMutualNeighbors(one: nodes[74], two: nodes[75])
        addMutualNeighbors(one: nodes[75], two: nodes[76])
        addMutualNeighbors(one: nodes[76], two: nodes[77])
        addMutualNeighbors(one: nodes[77], two: nodes[78])
        addMutualNeighbors(one: nodes[78], two: nodes[79])
        addMutualNeighbors(one: nodes[79], two: nodes[80])
        addMutualNeighbors(one: nodes[80], two: nodes[81])
        addMutualNeighbors(one: nodes[81], two: nodes[82])
        addMutualNeighbors(one: nodes[82], two: nodes[83])
        addMutualNeighbors(one: nodes[84], two: nodes[21])
        addMutualNeighbors(one: nodes[84], two: nodes[85])
        addMutualNeighbors(one: nodes[85], two: nodes[86])
        addMutualNeighbors(one: nodes[86], two: nodes[41])
        addMutualNeighbors(one: nodes[87], two: nodes[41])
        addMutualNeighbors(one: nodes[87], two: nodes[88])
        addMutualNeighbors(one: nodes[88], two: nodes[74])
        addMutualNeighbors(one: nodes[74], two: nodes[89])
        addMutualNeighbors(one: nodes[86], two: nodes[90])
        addMutualNeighbors(one: nodes[26], two: nodes[90])
    }
    
    private  func initEECSBuildingFloor4() {
        nodes.append(Point(x: 345, y: 825)) // 0
        nodes.append(Point(x: 345, y: 755)) // 1
        nodes.append(Point(x: 345, y: 680)) // 2
        nodes.append(Point(x: 345, y: 605)) // 3
        nodes.append(Point(x: 345, y: 530)) // 4
        nodes.append(Point(x: 345, y: 455)) // 5
        nodes.append(Point(x: 345, y: 370)) // 6
        nodes.append(Point(x: 345, y: 290)) // 7
        nodes.append(Point(x: 345, y: 220)) // 8
        nodes.append(Point(x: 420, y: 215)) // 9 --top row
        nodes.append(Point(x: 495, y: 215)) // 10
        nodes.append(Point(x: 570, y: 215)) // 11
        nodes.append(Point(x: 645, y: 215)) // 12
        nodes.append(Point(x: 730, y: 215)) // 13 ---col 1
        nodes.append(Point(x: 795, y: 215)) // 14
        nodes.append(Point(x: 870, y: 215)) // 15
        nodes.append(Point(x: 945, y: 215)) // 16
        nodes.append(Point(x: 1020, y: 215)) // 17
        nodes.append(Point(x: 1110, y: 215)) // 18 --- col 2
        nodes.append(Point(x: 1170, y: 215)) // 19
        nodes.append(Point(x: 1245, y: 215)) // 20
        nodes.append(Point(x: 1320, y: 215)) // 21
        nodes.append(Point(x: 1405, y: 215)) // 22
        nodes.append(Point(x: 1495, y: 215)) // 23 --- col 3
        nodes.append(Point(x: 1555, y: 215)) // 24
        nodes.append(Point(x: 1630, y: 215)) // 25
        nodes.append(Point(x: 1708, y: 215)) // 26 ---col 4
        nodes.append(Point(x: 420, y: 605)) // 27 --atrium above row
        nodes.append(Point(x: 495, y: 605)) // 28
        nodes.append(Point(x: 570, y: 605)) // 29
        nodes.append(Point(x: 645, y: 605)) // 30
        nodes.append(Point(x: 730, y: 605)) // 31 ---col 1
        nodes.append(Point(x: 795, y: 605)) // 32
        nodes.append(Point(x: 870, y: 605)) // 33
        nodes.append(Point(x: 945, y: 605)) // 34
        nodes.append(Point(x: 1020, y: 605)) // 35
        nodes.append(Point(x: 1110, y: 605)) // 36 --- col 2
        nodes.append(Point(x: 1170, y: 605)) // 37
        nodes.append(Point(x: 1245, y: 605)) // 38
        nodes.append(Point(x: 1320, y: 605)) // 39
        nodes.append(Point(x: 1405, y: 605)) // 40
        nodes.append(Point(x: 1495, y: 605)) // 41 --- col 3
        nodes.append(Point(x: 1555, y: 605)) // 42
        nodes.append(Point(x: 1630, y: 605)) // 43
        nodes.append(Point(x: 1708, y: 605)) // 44 ---col 4
        nodes.append(Point(x: 730, y: 290)) // 45 ---col 1 down
        nodes.append(Point(x: 730, y: 370)) // 46
        nodes.append(Point(x: 730, y: 455)) // 47
        nodes.append(Point(x: 730, y: 530)) // 48
        nodes.append(Point(x: 730, y: 680)) // 49
        nodes.append(Point(x: 730, y: 755)) // 50
        nodes.append(Point(x: 730, y: 825)) // 51
        nodes.append(Point(x: 730, y: 890)) // 52
        nodes.append(Point(x: 1110, y: 290)) // 53 --- col 2 down
        nodes.append(Point(x: 1110, y: 370)) // 54
        nodes.append(Point(x: 1110, y: 455)) // 55
        nodes.append(Point(x: 1110, y: 530)) // 56
        nodes.append(Point(x: 1110, y: 680)) // 57
        nodes.append(Point(x: 1110, y: 755)) // 58
        nodes.append(Point(x: 1110, y: 825)) // 59
        nodes.append(Point(x: 1110, y: 890)) // 60
        nodes.append(Point(x: 1110, y: 965)) // 61
        nodes.append(Point(x: 1110, y: 1040)) // 62
        nodes.append(Point(x: 1495, y: 290)) // 63 --- col 3 down
        nodes.append(Point(x: 1495, y: 370)) // 64
        nodes.append(Point(x: 1495, y: 455)) // 65
        nodes.append(Point(x: 1495, y: 530)) // 66
        nodes.append(Point(x: 1495, y: 680)) // 67
        nodes.append(Point(x: 1495, y: 755)) // 68
        nodes.append(Point(x: 1495, y: 825)) // 69
        nodes.append(Point(x: 1495, y: 890)) // 70
        nodes.append(Point(x: 1495, y: 965)) // 71
        nodes.append(Point(x: 1495, y: 1040)) // 72
        nodes.append(Point(x: 1495, y: 1105)) // 73
        nodes.append(Point(x: 420, y: 825)) // 74 --atrium below row
        nodes.append(Point(x: 495, y: 825)) // 75
        nodes.append(Point(x: 570, y: 825)) // 76
        nodes.append(Point(x: 645, y: 825)) // 77
        nodes.append(Point(x: 795, y: 890)) // 78 --atrium below row 2
        nodes.append(Point(x: 870, y: 890)) // 79
        nodes.append(Point(x: 945, y: 890)) // 80
        nodes.append(Point(x: 1020, y: 890)) // 81
        nodes.append(Point(x: 1170, y: 1040)) // 82 --bottom row
        nodes.append(Point(x: 1245, y: 1040)) // 83
        nodes.append(Point(x: 1320, y: 1040)) // 84
        nodes.append(Point(x: 1405, y: 1040)) // 85
        nodes.append(Point(x: 1708, y: 290)) // 86 ---col 4 down
        nodes.append(Point(x: 1708, y: 370)) // 87
        nodes.append(Point(x: 1708, y: 455)) // 88
        nodes.append(Point(x: 1708, y: 530)) // 89
    }
    
    private func initEECSBuildingFloor4Neighbors() {
        addMutualNeighbors(one: nodes[0], two: nodes[1])
        addMutualNeighbors(one: nodes[1], two: nodes[2])
        addMutualNeighbors(one: nodes[2], two: nodes[3])
        addMutualNeighbors(one: nodes[3], two: nodes[4])
        addMutualNeighbors(one: nodes[4], two: nodes[5])
        addMutualNeighbors(one: nodes[5], two: nodes[6])
        addMutualNeighbors(one: nodes[6], two: nodes[7])
        addMutualNeighbors(one: nodes[7], two: nodes[8])
        addMutualNeighbors(one: nodes[8], two: nodes[9])
        addMutualNeighbors(one: nodes[9], two: nodes[10])
        addMutualNeighbors(one: nodes[10], two: nodes[11])
        addMutualNeighbors(one: nodes[11], two: nodes[12])
        addMutualNeighbors(one: nodes[12], two: nodes[13])
        addMutualNeighbors(one: nodes[13], two: nodes[14])
        addMutualNeighbors(one: nodes[14], two: nodes[15])
        addMutualNeighbors(one: nodes[15], two: nodes[16])
        addMutualNeighbors(one: nodes[16], two: nodes[17])
        addMutualNeighbors(one: nodes[17], two: nodes[18])
        addMutualNeighbors(one: nodes[18], two: nodes[19])
        addMutualNeighbors(one: nodes[19], two: nodes[20])
        addMutualNeighbors(one: nodes[20], two: nodes[21])
        addMutualNeighbors(one: nodes[21], two: nodes[22])
        addMutualNeighbors(one: nodes[22], two: nodes[23])
        addMutualNeighbors(one: nodes[23], two: nodes[24])
        addMutualNeighbors(one: nodes[24], two: nodes[25])
        addMutualNeighbors(one: nodes[25], two: nodes[26])
        addMutualNeighbors(one: nodes[3], two: nodes[27])
        addMutualNeighbors(one: nodes[27], two: nodes[28])
        addMutualNeighbors(one: nodes[28], two: nodes[29])
        addMutualNeighbors(one: nodes[29], two: nodes[30])
        addMutualNeighbors(one: nodes[30], two: nodes[31])
        addMutualNeighbors(one: nodes[31], two: nodes[32])
        addMutualNeighbors(one: nodes[32], two: nodes[33])
        addMutualNeighbors(one: nodes[33], two: nodes[34])
        addMutualNeighbors(one: nodes[34], two: nodes[35])
        addMutualNeighbors(one: nodes[35], two: nodes[36])
        addMutualNeighbors(one: nodes[36], two: nodes[37])
        addMutualNeighbors(one: nodes[37], two: nodes[38])
        addMutualNeighbors(one: nodes[38], two: nodes[39])
        addMutualNeighbors(one: nodes[39], two: nodes[40])
        addMutualNeighbors(one: nodes[40], two: nodes[41])
        addMutualNeighbors(one: nodes[41], two: nodes[42])
        addMutualNeighbors(one: nodes[42], two: nodes[43])
        addMutualNeighbors(one: nodes[43], two: nodes[44])
        addMutualNeighbors(one: nodes[45], two: nodes[13])
        addMutualNeighbors(one: nodes[45], two: nodes[46])
        addMutualNeighbors(one: nodes[46], two: nodes[47])
        addMutualNeighbors(one: nodes[47], two: nodes[48])
        addMutualNeighbors(one: nodes[48], two: nodes[31])
        addMutualNeighbors(one: nodes[49], two: nodes[31])
        addMutualNeighbors(one: nodes[49], two: nodes[50])
        addMutualNeighbors(one: nodes[50], two: nodes[51])
        addMutualNeighbors(one: nodes[51], two: nodes[52])
        addMutualNeighbors(one: nodes[18], two: nodes[53])
        addMutualNeighbors(one: nodes[53], two: nodes[54])
        addMutualNeighbors(one: nodes[54], two: nodes[55])
        addMutualNeighbors(one: nodes[55], two: nodes[56])
        addMutualNeighbors(one: nodes[56], two: nodes[36])
        addMutualNeighbors(one: nodes[36], two: nodes[57])
        addMutualNeighbors(one: nodes[57], two: nodes[58])
        addMutualNeighbors(one: nodes[58], two: nodes[59])
        addMutualNeighbors(one: nodes[59], two: nodes[60])
        addMutualNeighbors(one: nodes[60], two: nodes[61])
        addMutualNeighbors(one: nodes[61], two: nodes[62])
        addMutualNeighbors(one: nodes[63], two: nodes[23])
        addMutualNeighbors(one: nodes[63], two: nodes[64])
        addMutualNeighbors(one: nodes[64], two: nodes[65])
        addMutualNeighbors(one: nodes[65], two: nodes[66])
        addMutualNeighbors(one: nodes[66], two: nodes[41])
        addMutualNeighbors(one: nodes[41], two: nodes[67])
        addMutualNeighbors(one: nodes[67], two: nodes[68])
        addMutualNeighbors(one: nodes[68], two: nodes[69])
        addMutualNeighbors(one: nodes[69], two: nodes[70])
        addMutualNeighbors(one: nodes[70], two: nodes[71])
        addMutualNeighbors(one: nodes[71], two: nodes[72])
        addMutualNeighbors(one: nodes[72], two: nodes[73])
        addMutualNeighbors(one: nodes[0], two: nodes[74])
        addMutualNeighbors(one: nodes[74], two: nodes[75])
        addMutualNeighbors(one: nodes[75], two: nodes[76])
        addMutualNeighbors(one: nodes[76], two: nodes[77])
        addMutualNeighbors(one: nodes[77], two: nodes[51])
        addMutualNeighbors(one: nodes[78], two: nodes[52])
        addMutualNeighbors(one: nodes[78], two: nodes[79])
        addMutualNeighbors(one: nodes[79], two: nodes[80])
        addMutualNeighbors(one: nodes[80], two: nodes[81])
        addMutualNeighbors(one: nodes[60], two: nodes[81])
        addMutualNeighbors(one: nodes[82], two: nodes[62])
        addMutualNeighbors(one: nodes[82], two: nodes[83])
        addMutualNeighbors(one: nodes[83], two: nodes[84])
        addMutualNeighbors(one: nodes[84], two: nodes[85])
        addMutualNeighbors(one: nodes[85], two: nodes[72])
        addMutualNeighbors(one: nodes[26], two: nodes[86])
        addMutualNeighbors(one: nodes[86], two: nodes[87])
        addMutualNeighbors(one: nodes[87], two: nodes[88])
        addMutualNeighbors(one: nodes[88], two: nodes[89])
        addMutualNeighbors(one: nodes[89], two: nodes[44])
    }    
}
