//
//  TableHeaderView.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import SnapKit

class TableHeaderView: UIView {
    
    enum Consts {
        static let activeOrders = "Активные заказы:"
    }
    
    let activeOrdersLabel = UILabel()
    
    func setup() {
        backgroundColor = Colors.headerColor
        
        activeOrdersLabel.font = UIFont(name: "Helvetica Neue", size: 24)
        activeOrdersLabel.textColor = Colors.textHederColor
        addSubview(activeOrdersLabel)
        activeOrdersLabel.text = Consts.activeOrders
        activeOrdersLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
