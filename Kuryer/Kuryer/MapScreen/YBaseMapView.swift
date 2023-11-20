//
//  YBaseMapView.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import YandexMapsMobile

class YBaseMapView: UIView {

    @objc public var mapView: YMKMapView?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    private func setup() {
        // OpenGl is deprecated under M1 simulator, we should use Vulkan
//        mapView = YMKMapView(frame: bounds, vulkanPreferred: YBaseMapView.isM1Simulator())
        mapView = YMKMapView(frame: bounds, vulkanPreferred: true)
        mapView?.mapWindow.map.mapType = .map
    }

    static func isM1Simulator() -> Bool {
        return (TARGET_IPHONE_SIMULATOR & TARGET_CPU_ARM64) != 0
    }
}
