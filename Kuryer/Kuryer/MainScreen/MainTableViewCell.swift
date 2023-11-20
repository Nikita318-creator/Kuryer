//
//  MainTableViewCell.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    
    enum Consts {
        static let pointAdresTitle = "Адрес точки"
        static let clientAdresTitle = "Адрес клиента"
    }
    
    let numberLabel = UILabel()
    let titleLabel = UILabel()
    let subTitleLabel = UILabel()
    let idLabel = UILabel()

    let sepaeatorView = UIView()
    
    func setup(kuryer: Kuryer) {
        backgroundColor = Colors.cellColor
        
        idLabel.text = "\(kuryer.id))."
        addSubview(idLabel)
        idLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(30)
            make.leading.equalToSuperview().inset(5)
        }
        
        titleLabel.text = Consts.pointAdresTitle + ": " + kuryer.pointAddres
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(50)
            make.leading.equalTo(idLabel.snp.trailing).inset(-5)
            make.trailing.equalToSuperview().inset(5)
        }
        
        subTitleLabel.text = Consts.clientAdresTitle + ": " + kuryer.clientAddres
        addSubview(subTitleLabel)
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).inset(20)
            make.height.equalTo(50)
            make.leading.equalTo(idLabel.snp.trailing).inset(-5)
            make.trailing.equalToSuperview().inset(5)
        }
        
        sepaeatorView.backgroundColor = .black
        addSubview(sepaeatorView)
        sepaeatorView.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}
