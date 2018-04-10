//
//  EECSRoomHandler.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/4/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import Foundation

import UIKit

class EECSRoomHandler {
    private var buildingRoomMap = [String: Int]()
    
    func initbuildingRoomMap() {
        // Clears building room map.
        buildingRoomMap.removeAll()
        
        var count = -1
        initEECSBuildingFloor1(&count)
        initEECSBuildingFloor2(&count)
        initEECSBuildingFloor3(&count)
        initEECSBuildingFloor4(&count)
    }

    func getRoomMap() -> [String:Int] {
        return buildingRoomMap
    }
    
    func roomExists(_ room : String) -> Bool {
        return buildingRoomMap[room] != nil
    }
    
    func roomEquals(room1 : String, room2 : String) -> Bool {
        return buildingRoomMap[room1] == buildingRoomMap[room2]
    }
    
    func getRoomValue(_ room : String) -> Int {
        return buildingRoomMap[room]!
    }
    
    private func initEECSBuildingFloor1(_ count : inout Int) {
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
        
        buildingRoomMap["1500"] = incrementNum(count: &count)
        
        buildingRoomMap["stairs11"] = incrementNum(count: &count)
        buildingRoomMap["stairs12"] = incrementNum(count: &count)
        buildingRoomMap["stairs13"] = incrementNum(count: &count)
        buildingRoomMap["stairs14"] = incrementNum(count: &count)
        buildingRoomMap["stairs15"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor2(_ count : inout Int) {
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
        
        
        buildingRoomMap["2322"] = incrementNum(count : &count) //was 2422 but prob intended to be 2322 -james
        
        buildingRoomMap["2331"] = incrementNum(count : &count) //added by james
        
        buildingRoomMap["2426"] = incrementNum(count : &count)
        
        buildingRoomMap["stairs21"] = incrementNum(count: &count)
        buildingRoomMap["stairs22"] = incrementNum(count: &count)
        buildingRoomMap["stairs23"] = incrementNum(count: &count)
        buildingRoomMap["stairs24"] = incrementNum(count: &count)
        buildingRoomMap["stairs25"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor3(_ count : inout Int) {
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
        
        buildingRoomMap["stairs31"] = incrementNum(count: &count)
        buildingRoomMap["stairs32"] = incrementNum(count: &count)
        buildingRoomMap["stairs33"] = incrementNum(count: &count)
        buildingRoomMap["stairs34"] = incrementNum(count: &count)
        buildingRoomMap["stairs35"] = incrementNum(count: &count)
    }
    
    private func initEECSBuildingFloor4(_ count : inout Int) {
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
        
        buildingRoomMap["stairs41"] = incrementNum(count: &count)
        buildingRoomMap["stairs42"] = incrementNum(count: &count)
        buildingRoomMap["stairs43"] = incrementNum(count: &count)
        buildingRoomMap["stairs44"] = incrementNum(count: &count)
        buildingRoomMap["stairs45"] = incrementNum(count: &count)
    }
}
