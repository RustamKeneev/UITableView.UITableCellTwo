//
//  MainCell.swift
//  UITableView.UITableCellTwo
//
//  Created by Rustam Keneev on 4/12/21.
//

import UIKit
import SnapKit

class MainCell: BaseTableViewCell {
    
    var label = UILabel()
    
    override func addSubview() {
        addSubview(label)
        label.snp.makeConstraints{(make) in
            make.center.equalTo(self)
        }
    }
    func loadData(text: String) {
        label.text = text
    }
}
