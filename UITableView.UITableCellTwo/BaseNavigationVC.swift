//
//  BaseNavigationVC.swift
//  UITableView.UITableCellTwo
//
//  Created by Rustam Keneev on 4/13/21.
//

import UIKit

class BaseNavigationVC: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let yourBackImage = R.image.backButton()
//        navigationBar.backIndicatorImage = yourBackImage
//        navigationBar.backIndicatorTransitionMaskImage = yourBackImage
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewWillAppear(_ animated: Bool) {
        self.viewWillAppear(animated)
//        UIApplication.shared.statusBarView?.backgroundColor = UIColor.white
    }
}
