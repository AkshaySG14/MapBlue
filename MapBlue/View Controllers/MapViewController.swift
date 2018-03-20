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
    private var startRoom = "0"
    private var destRoom = "0"
    
    @IBOutlet weak var mapTitle: UILabel!
    @IBOutlet weak var mapImage: UIImageView!

    // Sets relevant variables.
    func initialize(building : Int, floor : Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    //zooming with pinch gesture
    let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinchHandler))
    
    @objc func pinchHandler(recognizer : UIPinchGestureRecognizer) {
        
        print ("PINCHING NOW")
        
        if let view = self.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets label of map view controller.
        self.mapTitle.text = Building.buildingMap.getBuildingName(building: building) + " Floor " + String(self.floor) + " Map"
        
        //zooming recognizer
        pinchGestureRecognizer.addTarget(self, action: #selector(pinchHandler))
        view.addGestureRecognizer(pinchGestureRecognizer)
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
