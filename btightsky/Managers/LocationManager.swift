//
//  LocationManager.swift
//  btightsky
//
//  Created by Иван Долголаптев on 6.05.24.
//

import Foundation
import CoreLocation

final class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
    static let shared = LocationManager()
    
    private var locationFrtchCommpetion: ((CLLocation) -> Void)?
    
    private var location: CLLocation? {
        didSet {
            guard let location = location else {
                return
            }
            locationFrtchCommpetion?(location)
        }
    }
    
    public func getCurrentLocation(completion: @escaping (CLLocation) -> Void) {
        
        self.locationFrtchCommpetion = completion
        
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        self.location = location
        manager.stopUpdatingLocation()
    }
}
