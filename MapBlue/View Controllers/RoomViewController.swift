//
//  RoomViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 8/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class RoomViewController: UIViewController {
    @IBOutlet weak var buildingTitle: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var startRoomField: UITextField!
    @IBOutlet weak var destinationRoomField: UITextField!
    
    private var building = 0;
    
    var pickerData: [String] = [String]()

    @IBAction func GoBack(_ sender: Any) {
        performSegue(withIdentifier: "gotoBuildings", sender: sender)
    }
    
    @IBAction func GoToMap(_ sender: Any) {
    }
        
    func initBuildingPickers() {
        
    }
    
    func setBuilding(building : Int?) {
        self.building = building!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.buildingTitle.text = "You are in " + Building.buildingMap.getBuildingName(building: building)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}
