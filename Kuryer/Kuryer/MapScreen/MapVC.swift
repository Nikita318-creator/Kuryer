//
//  MapVC.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

//import UIKit
//import SnapKit
//import YandexMapsMobile
//
//class MapVC: UIViewController {
//    
//    lazy var mapView: YMKMapView? = YBaseMapView().mapView
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        setup()
//    }
//    
//    private func setup() {
//        navigationController?.setNavigationBarHidden(false, animated: false)
//        navigationItem.hidesBackButton = false
//        view.backgroundColor = Colors.headerColor //?
//        
//        setupMap()
//    }
//    
//    private func setupMap() {
//        guard let mapView = mapView else { return }
//        
//        // 2. Add to parent in viewDidLoad()
//        view.addSubview(mapView)
//        
//        // 3. Make constraints. Showing an example done with SnapKit
//        mapView.snp.makeConstraints {
//            $0.leading.trailing.top.equalToSuperview()
//            $0.bottom.equalTo(view.safeAreaLayoutGuide)
//        }
//        
//        // 4. Call another function to add placemark on the map
//        addPlacemarkOnMap()
//    }
//    
//    func addPlacemarkOnMap() {
//        guard let mapView = mapView else { return }
//
//        
//       // Setting coordinates
//     let point = YMKPoint(latitude: 47.228836, longitude: 39.715875)
//     let viewPlacemark: YMKPlacemarkMapObject = mapView.mapWindow.map.mapObjects.addPlacemark(with: point)
//     
//      // Configuring placemark icon
//     viewPlacemark.setIconWith(
//         UIImage(named: "map_search_result_primary")!, // Be sure to check that you have this asset
//         style: YMKIconStyle(
//             anchor: CGPoint(x: 0.5, y: 0.5) as NSValue,
//             rotationType: YMKRotationType.rotate.rawValue as NSNumber,
//             zIndex: 0,
//             flat: true,
//             visible: true,
//             scale: 1.5,
//             tappableArea: nil
//         )
//     )
//    }
//}
