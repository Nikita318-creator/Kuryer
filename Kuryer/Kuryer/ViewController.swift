//
//  ViewController.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import YandexMapsMobile

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        YMKMapKit.setApiKey("dd94ae49-7e5b-4f50-afa4-e5f1d1fb6db8")
        YMKMapKit.setLocale("ru_RU")
        YMKMapKit.sharedInstance()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let vc = MainScreenVC()
        navigationController?.pushViewController(vc, animated: false)
    }
}

