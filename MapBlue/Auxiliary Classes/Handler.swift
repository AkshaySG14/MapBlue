//
//  Handler.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/4/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

protocol Handler {
    func initNodes(_ floor : Int)
    func initRooms()
    func initPoints(building : Int, floor : Int)
    func getRoomMap() -> [String:Int]
    func getNodes() -> [Point]
    func getPointMap() -> [Int:Point]
    func getStairs(building : Int, floor : Int) -> [Point]
    func getNearestNode(point : Point, nodes : [Point]) -> Point
    func roomExists(_ room : String) -> Bool
    func roomEquals(room1 : String, room2 : String) -> Bool
    func getRoomValue(_ room : String) -> Int
    func addMutualNeighbors(one : Point, two : Point)
}
