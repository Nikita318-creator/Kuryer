//
//  MainScreenVC.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import SnapKit

class MainScreenVC: UIViewController {
    
    enum Consts {
        static let cellHeight: CGFloat = 100
        static let headeHeight: CGFloat = 70
        static let contentInset: CGFloat = 22
        
    }
    
    let tableView = UITableView()
    let viewModel = MainVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationItem.hidesBackButton = true
    }
    
    private func setup() {
        navigationController?.setNavigationBarHidden(true, animated: false)
//        navigationController?.navigationBar.tintColor = .red
//        navigationController?.view.backgroundColor = .red
        navigationItem.hidesBackButton = true
        view.backgroundColor = Colors.headerColor
        
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = Colors.backgraundColor
        tableView.separatorStyle = .none
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().inset(70)
        }

        self.tableView.contentInset = UIEdgeInsets(top: -Consts.contentInset, left: 0, bottom: 0, right: 0)
    }
}

extension MainScreenVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.kuryers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MainTableViewCell()
        cell.setup(kuryer: viewModel.kuryers[indexPath.row])
        return cell
    }
}

extension MainScreenVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Consts.headeHeight
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Consts.cellHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = TableHeaderView()
        headerView.setup()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Вы хотите взять данный заказ на выполнение", message: nil, preferredStyle: .alert)
         
        alert.addAction(UIAlertAction(title: "Да", style: .default) { _ in
            let vc = MapVC()
            self.navigationController?.pushViewController(vc, animated: false)
        })
        alert.addAction(UIAlertAction(title: "Нет", style: .cancel) { _ in
            
        })
         
        self.present(alert, animated: true)
    }
    
//    @objc private func tapOKBtton() {
//
//    }
//
//    @objc private func tapCancelBtton() {
//
//    }
}

extension MainScreenVC: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < Consts.contentInset {
            scrollView.contentOffset.y = Consts.contentInset
        }
    }
}
