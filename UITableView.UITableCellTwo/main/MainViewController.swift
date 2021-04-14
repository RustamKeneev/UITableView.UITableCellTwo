//
//  ViewController.swift
//  UITableView.UITableCellTwo
//
//  Created by Rustam Keneev on 4/12/21.
//

import UIKit
import SnapKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var data:[String] = []
    let tableView = UITableView(frame: .zero,style: .grouped)
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellWithClass: MainCell.self)
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.left.bottom.top.right.equalTo(view)
        }
        
        view.addSubview(button)
        button.snp.makeConstraints{(make) in
            make.bottom.equalTo(view).offset(-20)
            make.right.equalTo(view).offset(-20)
            make.height.width.equalTo(50)
            button.layer.cornerRadius = 25
            
        }
    }
    
    @objc func onClick(view: UIButton){
        i = i + 1
        data.append(String(i))
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("test \(data[indexPath.row]) \(navigationController != nil)")
        let test = MainTwoViewController()
        test.i = data[indexPath.row]
        self.tableView.reloadData()
        
        let naf = BaseNavigationVC(rootViewController: test)
        AppDelegate.shared?.changeRootViewController(naf)
        
//        navigationController?.pushViewController(test, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MainCell()
        cell.loadData(text: data[indexPath.row])
        return cell
    }
}
