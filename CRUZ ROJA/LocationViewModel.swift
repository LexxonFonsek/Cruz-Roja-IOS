//
//  Locatu.swift
//  CRUZ ROJA
//
//  Created by Mac OS lab on 09/04/24.
//

import Foundation
import CoreLocation
import MapKit

final class LocationViewModel: NSObject, ObservableObject {
    private struct DefaultRegion{
        static let latitude = 9.9333
        static let longitude = -84.08333
    }
    private struct Span{
        static let delta = 0.1
    }
    @Published var userHasLocation: Bool = false
    @Published var userLocation: MKCoordinateRegion = .init()
    private let locationManager: CLLocationManager = .init()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
    }
    func checkUserAuthorization() {
            let status = locationManager.authorizationStatus
            switch status {
            case .authorized, .authorizedAlways, .authorizedWhenInUse:
                userHasLocation = true
                break
            case .denied, .notDetermined, .restricted:
                print("User no ha autorizado mostrar su localización")
                userHasLocation = false
            @unknown default:
                print("Unhandled state")
            }
        }
}
extension LocationViewModel: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        print("Location \(location)")
        userLocation = .init(center: location.coordinate, span: .init(latitudeDelta: Span.delta, longitudeDelta:Span.delta))
    }
}
