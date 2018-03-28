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
    // Top and Leading
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
    var destIndicatorViewBottom : CGPoint = CGPoint.zero

    // Sets relevant variables.
    func initialize(building : Int, floor : Int, startRoom : String, destRoom : String) {
        self.building = building
        self.floor = floor
        self.startRoom = startRoom
        self.destRoom = destRoom
    }
    
    // Set position of the markers.
    func setMarkerPositions() {
        let startPoint = Building.pointMap.getBuildingPointMap()[Building.roomMap.getRoomValue(room: startRoom)]
        let destPoint = Building.pointMap.getBuildingPointMap()[Building.roomMap.getRoomValue(room: destRoom)]
        
        startIndicatorImageLeading.constant = startPoint!.x
        startIndicatorImageTop.constant = startPoint!.y
        
        destIndicatorImageLeading.constant = destPoint!.x
        destIndicatorImageTop.constant = destPoint!.y - destIndicatorImage.frame.height / 2
        self.view.layoutIfNeeded()
    }
    
    // Adds relevant points.
    func setPoints() {
        for point in Building.pointList.getPointNodes() {
            let imageName = "Point.png"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            self.scrollView.addSubview(imageView)
            let widthConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.width, multiplier: 1.0, constant: 20)
            let heightConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1.0, constant: 20)
            let leadingConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: point.x)
            let topConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self.scrollView, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: point.y)
            NSLayoutConstraint.activate([widthConstraint, heightConstraint, leadingConstraint, topConstraint])
            self.view.layoutIfNeeded()
            pointNodes.append(imageView)
            pointCenters.append(imageView.center)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets label of map view controller.
        Building.pointMap.initBuildingPointMap(building: building, floor: floor)
        // Initializes all points.
        Building.pointList.initPointNodes(building: building, floor: floor)
        setPoints()
        self.mapTitle.text = Building.buildingMap.getBuildingName(building: building) + " Floor " + String(self.floor) + " Map"
        // Set marker starting positions.
        self.setMarkerPositions()
        // Sets indicator centers.
        self.startIndicatorViewCenter = startIndicatorImage.center
        self.destIndicatorViewBottom = CGPoint(x: destIndicatorImage.center.x, y: destIndicatorImage.center.y + destIndicatorImage.frame.height / 2)
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
        self.startIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - startIndicatorViewCenter.x, y: translatedPoint.y + 100 - startIndicatorViewCenter.y).scaledBy(x: 0.5 + scrollView.zoomScale, y: 0.5 + scrollView.zoomScale)
        
        translatedPoint = destIndicatorViewBottom.applying(scaleAffineTransform)
        self.destIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - destIndicatorViewBottom.x, y: translatedPoint.y + 100 - destIndicatorViewBottom.y).scaledBy(x: 0.5 + scrollView.zoomScale, y: 0.5 + scrollView.zoomScale)

        // Translates all points accordingly.
        if (!pointNodes.isEmpty) {
            for index in 0...pointNodes.count - 1 {
                translatedPoint = pointCenters[index].applying(scaleAffineTransform)
                pointNodes[index].transform = scrollView.transform.translatedBy(x: translatedPoint.x - pointCenters[index].x, y: translatedPoint.y + 100 - pointCenters[index].y)
            }
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
        self.startIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - startIndicatorViewCenter.x, y: translatedPoint.y + 100 - startIndicatorViewCenter.y).scaledBy(x: 0.5 + scrollView.zoomScale, y: 0.5 + scrollView.zoomScale)
        
        translatedPoint = destIndicatorViewBottom.applying(scaleAffineTransform)
        self.destIndicatorImage.transform = scrollView.transform.translatedBy(x: translatedPoint.x - destIndicatorViewBottom.x, y: translatedPoint.y + 100 - destIndicatorViewBottom.y).scaledBy(x: 0.5 + scrollView.zoomScale, y: 0.5 + scrollView.zoomScale)
        
        // Translates all points accordingly.
        if (!pointNodes.isEmpty) {
            for index in 0...pointNodes.count - 1 {
                translatedPoint = pointCenters[index].applying(scaleAffineTransform)
                pointNodes[index].transform = scrollView.transform.translatedBy(x: translatedPoint.x - pointCenters[index].x, y: translatedPoint.y + 100 - pointCenters[index].y).scaledBy(x: 0.5 + scrollView.zoomScale, y: 0.5 + scrollView.zoomScale)
            }
        }
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        let scaleAffineTransform = scrollView.transform.scaledBy(x: scale, y: scale)
        self.scrollView.contentSize = self.mapImage.bounds.size.applying(scaleAffineTransform)
        self.scrollView.contentSize.height = self.scrollView.contentSize.height * 1.1 // Account for bottom portion.
    }
}
