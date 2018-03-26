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
    // Constraints for Indicator Images.
    @IBOutlet weak var startIndicatorImageTop: NSLayoutConstraint!
    @IBOutlet weak var startIndicatorImageLeading: NSLayoutConstraint!
    @IBOutlet weak var destIndicatorImageTop: NSLayoutConstraint!
    @IBOutlet weak var destIndicatorImageLeading: NSLayoutConstraint!
    // Indicator Images.
    @IBOutlet weak var startIndicatorImage: UIImageView!
    @IBOutlet weak var destIndicatorImage: UIImageView!
    // Point Images.
    var pointNodes: [UIImageView] = []
    // Point centers.
    var pointCenters: [CGPoint] = []
    // Scroll view.
    @IBOutlet weak var scrollView: UIScrollView!
    // Center of the indicators.
    var startIndicatorViewCenter : CGPoint = CGPoint.zero
    var destIndicatorViewCenter : CGPoint = CGPoint.zero

    // Sets relevant variables.
    func initialize(building : Int, floor : Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    // Set position of the markers.
    func setMarkerPositions() {
        let startPoint = Building.pointMap.getBuildingPointMap(building)[Building.roomMap.getRoomValue(room: startRoom, building: building)]
        let destPoint = Building.pointMap.getBuildingPointMap(building)[Building.roomMap.getRoomValue(room: destRoom, building: building)]
        startIndicatorImageLeading.constant = startPoint!.x
        startIndicatorImageTop.constant = startPoint!.y
        destIndicatorImageLeading.constant = destPoint!.x
        destIndicatorImageTop.constant = destPoint!.y
        self.view.layoutIfNeeded()
    }
    
    // Adds relevant points.
    func setPoints() {
        for point in Building.pointList.buildingNodes {
            let imageName = "Point.png"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: point.x, y: point.y, width: 10, height: 10)
            pointNodes.append(imageView)
            pointCenters.append(imageView.center)
            view.addSubview(imageView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets label of map view controller.
        Building.pointMap.initBuildingPointMap(building)
        // Initializes all points.
        Building.pointList.initPoints()
        setPoints()
        self.mapTitle.text = Building.buildingMap.getBuildingName(building: building) + " Floor " + String(self.floor) + " Map"
        // Set marker starting positions.
        self.setMarkerPositions()
        // Sets indicator centers.
        self.startIndicatorViewCenter = startIndicatorImage.center
        self.destIndicatorViewCenter = destIndicatorImage.center
        // Sets content size of scroll view.
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
        
        // Obtains the offset value.
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scrollView.zoomScale, y: scrollView.zoomScale)
        
        // Translates all indicators accordingly.
        var translatedPoint = startIndicatorViewCenter.applying(scaleAffineTransform)
        self.startIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - startIndicatorViewCenter.x, y: translatedPoint.y + 100 - startIndicatorViewCenter.y)
        
        translatedPoint = destIndicatorViewCenter.applying(scaleAffineTransform)
        self.destIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - destIndicatorViewCenter.x, y: translatedPoint.y + 100 - destIndicatorViewCenter.y)

        // Translates all points accordingly.
        for index in 0...pointNodes.count - 1 {
            translatedPoint = pointCenters[index].applying(scaleAffineTransform)
            pointNodes[index].transform = scrollView.transform.translatedBy(x: translatedPoint.x - pointCenters[index].x, y: translatedPoint.y + 100 - pointCenters[index].y)
        }
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
        // Gets the offset value.
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scrollView.zoomScale, y: scrollView.zoomScale)
        
        // Translates all indicators accordingly.
        var translatedPoint = startIndicatorViewCenter.applying(scaleAffineTransform)
        self.startIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - startIndicatorViewCenter.x, y: translatedPoint.y + 100 - startIndicatorViewCenter.y)
        
        translatedPoint = destIndicatorViewCenter.applying(scaleAffineTransform)
        self.destIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - destIndicatorViewCenter.x, y: translatedPoint.y + 100 - destIndicatorViewCenter.y)
        
        // Translates all points accordingly.
        for index in 0...pointNodes.count - 1 {
            translatedPoint = pointCenters[index].applying(scaleAffineTransform)
            pointNodes[index].transform = scrollView.transform.translatedBy(x: translatedPoint.x - pointCenters[index].x, y: translatedPoint.y + 100 - pointCenters[index].y)
        }
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scale, y: scale)
        self.scrollView.contentSize = self.mapImage.bounds.size.applying(scaleAffineTransform)
    }
}
