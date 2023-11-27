//
//  AppleMapVC.swift
//  Kuryer
//
//  Created by никита уваров on 21.11.23.
//

import UIKit
import SnapKit
import MapKit

class AppleMapVC: UIViewController {

    let locationManager = CLLocationManager()
    let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.hidesBackButton = false
        setup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
    }
    
    private func setup() {
        setupMapView()
    }
    
    private func setupMapView() {
        mapView.frame = view.frame
        mapView.delegate = self
        view.addSubview(mapView)
        
        let mocfirstCoordinate = CLLocationCoordinate2D(latitude: 59.925, longitude: 30.29)
        let mocsecondCoordinate = CLLocationCoordinate2D(latitude: 59.9217, longitude: 30.31)
        rout(firstCoordinate: mocfirstCoordinate, secondCoordinate: mocsecondCoordinate)
    }
    
    private func rout(firstCoordinate: CLLocationCoordinate2D, secondCoordinate: CLLocationCoordinate2D) {
        let firstAnnotation = MKPointAnnotation()
        firstAnnotation.title = "1"
        firstAnnotation.coordinate = firstCoordinate
        
        let secondAnnotation = MKPointAnnotation()
        secondAnnotation.title = "2"
        secondAnnotation.coordinate = secondCoordinate
        
        mapView.showAnnotations([firstAnnotation, secondAnnotation], animated: true)
        
        let firstItem = MKMapItem(placemark: MKPlacemark(coordinate: firstCoordinate))
        let secondItem = MKMapItem(placemark: MKPlacemark(coordinate: secondCoordinate))

        let request = MKDirections.Request()
        request.source = firstItem
        request.destination = secondItem
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        directions.calculate { [weak self] response, error in
            if response?.routes.count ?? 0 > 0, let rout = response?.routes.first {
                self?.mapView.addOverlay(rout.polyline, level: .aboveRoads)
                let rect = rout.polyline.boundingMapRect
//                self?.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
            }
        }
    }
}

extension AppleMapVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKPolylineRenderer(overlay: overlay)
        render.lineWidth = 3.5
        render.strokeColor = .red
        
        return render
    }
}

extension AppleMapVC: CLLocationManagerDelegate {
    
}
