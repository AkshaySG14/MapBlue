//
//  MapViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 14/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    private var building = 0
    private var floor = 0
    private var startRoom = 0
    private var destRoom = 0
    
    @IBOutlet weak var mapTitle: UILabel!
    @IBOutlet weak var mapImage: UIImageView!

    // Sets relevant variables.
    func initialize(building : Int, floor : Int, startRoom : Int, destRoom : Int) {
        self.building = building
        self.floor = floor
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets label of map view controller.
        self.mapTitle.text = Building.buildingMap.getBuildingName(building: building) + " Floor " + String(self.floor) + " Map"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
