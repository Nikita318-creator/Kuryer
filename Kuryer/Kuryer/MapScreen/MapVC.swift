//
//  MapVC.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import SnapKit

class MapVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationItem.hidesBackButton = false
        view.backgroundColor = Colors.headerColor //?        
    }
}
