//
//  ViewController.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let vc = MainScreenVC()
        navigationController?.pushViewController(vc, animated: false)
    }
}

