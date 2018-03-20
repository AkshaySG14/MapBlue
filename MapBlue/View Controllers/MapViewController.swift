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

    // Map constraints.
    @IBOutlet weak var mapImageTrailing: NSLayoutConstraint!
    @IBOutlet weak var mapImageLeading: NSLayoutConstraint!
    @IBOutlet weak var mapImageBottom: NSLayoutConstraint!
    @IBOutlet weak var mapImageTop: NSLayoutConstraint!
    // Scroll view.
    @IBOutlet weak var scrollView: UIScrollView!
    
    // Sets relevant variables.
    func initialize(building : Int, floor : Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    // Set position of the marker.
    func setMarkerPosition() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets label of map view controller.
        self.mapTitle.text = Building.buildingMap.getBuildingName(building: building) + " Floor " + String(self.floor) + " Map"
    }
    
    // Sets initial constants.
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        updateMinZoomScaleForSize(scrollView.bounds.size)
    }
    
    // Sets the scroll view to have a consistent zoom scale. This is to prevent over or under zooming.
    fileprivate func updateMinZoomScaleForSize(_ size: CGSize) {
        let widthScale = size.width / self.mapImage.bounds.width
        let heightScale = size.height / self.mapImage.bounds.height
        let minScale = min(widthScale, heightScale)

        scrollView.minimumZoomScale = minScale
        scrollView.zoomScale = minScale
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MapViewController: UIScrollViewDelegate {
    // Links the map to be zoomed in on.
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return mapImage
    }
    
    // Called when user zooms and upon initialization.
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        updateConstraintsForSize(scrollView.bounds.size)
    }
    
    // Ensures that the map will stay in the center of the scroll view.
    fileprivate func updateConstraintsForSize(_ size: CGSize) {
        let yOffset = max(0, (size.height - mapImage.frame.height) / 2)
        mapImageTop.constant = yOffset
        mapImageBottom.constant = yOffset
        
        let xOffset = max(0, (size.width - mapImage.frame.width) / 2)
        mapImageLeading.constant = xOffset
        mapImageTrailing.constant = xOffset
        
        self.view.layoutIfNeeded()
    }
}


