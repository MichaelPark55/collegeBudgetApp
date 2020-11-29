//
//  LocationViewController.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import UIKit
import Foundation
import CoreLocation
import MapKit

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var map: MKMapView!
    
    
    @IBOutlet weak var bankInfo: UITextView!
    
    var manager = CLLocationManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            manager.stopUpdatingLocation()
            
            render(location)
        }
    }
    
    func render(_ location: CLLocation) {
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        map.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        map.addAnnotation(pin)
    }
    
    
    @IBAction func search(_ sender: UIButton) {
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = "banks"
        request.region = map.region
        let search = MKLocalSearch(request: request)
        
        search.start {response, _ in guard let response = response else {
            return
            }
            print( response.mapItems)
            var matchingItems:[MKMapItem] = []
            matchingItems = response.mapItems
            for i in 1...matchingItems.count - 1
            {
                let place = matchingItems[i].placemark
                
                var temp_lat : CLLocationDegrees = (place.location?.coordinate.latitude)!
                var temp_long : CLLocationDegrees = (place.location?.coordinate.longitude)!
                var temp_place = (place.name)
                
                let coordinates = CLLocationCoordinate2D( latitude: temp_lat, longitude: temp_long)
                //trial may not need
                let span: MKCoordinateSpan = MKCoordinateSpan.init(latitudeDelta: 0.01, longitudeDelta: 0.01)
                
                
                
                let annotation1 = MKPointAnnotation()
                annotation1.coordinate = coordinates
                annotation1.title = temp_place
                
                self.map.addAnnotation(annotation1)
                
            }
            print(String("heheh"))
        }
    }
    
}
