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
    @IBOutlet weak var indicatorImageTop: NSLayoutConstraint!
    @IBOutlet weak var indicatorImageTrailing: NSLayoutConstraint!
    @IBOutlet weak var indicatorImageBottom: NSLayoutConstraint!
    @IBOutlet weak var indicatorImageLeading: NSLayoutConstraint!
    @IBOutlet weak var indicatorImage: UIImageView!
    // Map constraints.
    @IBOutlet weak var mapImageTrailing: NSLayoutConstraint!
    @IBOutlet weak var mapImageLeading: NSLayoutConstraint!
    @IBOutlet weak var mapImageBottom: NSLayoutConstraint!
    @IBOutlet weak var mapImageTop: NSLayoutConstraint!
    // Scroll view.
    @IBOutlet weak var scrollView: UIScrollView!
    // Center of the indicator.
    var indicator1ViewCenter : CGPoint = CGPoint.zero
    
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
        indicator1ViewCenter = indicatorImage.center
        self.scrollView.contentSize = self.mapImage.frame.size
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
//        updateConstraintsForSize(scrollView.bounds.size)
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scrollView.zoomScale, y: scrollView.zoomScale)
        let translatedPoint = indicator1ViewCenter.applying(scaleAffineTransform)
        self.indicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - indicator1ViewCenter.x, y: translatedPoint.y + 100 - indicator1ViewCenter.y)
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scale, y: scale)
        scrollView.contentSize = self.mapImage.bounds.size.applying(scaleAffineTransform)
    }
    
//    fileprivate func updateConstraintsForSize(_ size: CGSize) {
//        // Ensures that the map will stay in the center of the scroll view.
//        let yMapOffset = max(0, (size.height - mapImage.frame.height) / 2)
//        mapImageTop.constant = yMapOffset
//        mapImageBottom.constant = yMapOffset
//
//        let xMapOffset = max(0, (size.width - mapImage.frame.width) / 2)
//        mapImageLeading.constant = xMapOffset
//        mapImageTrailing.constant = xMapOffset
//
//        // Same but for indicator image.
//        let yIndicatorOffset = max(0, (size.height - indicatorImage.frame.height) / 2)
//        indicatorImageTop.constant = yIndicatorOffset
//
//        let xIndicatorOffset = max(0, (size.width - indicatorImage.frame.width) / 2)
//        indicatorImageLeading.constant = xIndicatorOffset
//
//        self.view.layoutIfNeeded()
//    }
}


