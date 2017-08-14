//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Kelvin Leung on 14/08/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let margins = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        NSLayoutConstraint.activate([
            topConstraint,
            leadingConstraint,
            trailingConstraint
        ])
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged), for: .valueChanged)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc private func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
}
