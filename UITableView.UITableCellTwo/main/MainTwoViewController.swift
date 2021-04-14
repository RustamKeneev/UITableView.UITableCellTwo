//
//  MainDetailsViewControlleer.swift
//  UITableView.UITableCellTwo
//
//  Created by Rustam Keneev on 4/12/21.
//

import UIKit
import SnapKit


class MainTwoViewController: UIViewController {
    
    var i  = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        var label = UILabel()
        label.text = i
        
        view.addSubview(label)
        label.snp.makeConstraints{(make) in
            make.center.equalTo(view)
        }
    }
}
