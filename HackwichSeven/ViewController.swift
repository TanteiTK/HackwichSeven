//
//  ViewController.swift
//  HackwichSeven
//
//  Created by CM Student on 4/4/19.
//  Copyright © 2019 Tyler Kan-Tanabe. All rights reserved.
//

import UIKit
import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
  
    let initialLoaction = CLLocation (latitude: 21.361888 , longitude : -158.055725)
    
    let regionRadius: CLLocationDistance = 1000
    
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    centerMapOnLocation(location: initialLoaction)
        
    }
    func centerMapOnLocation (location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance( location.coordinate,regionRadius, regionRadius)
        mapview.setRegion (coordinateRegion, animated : true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

