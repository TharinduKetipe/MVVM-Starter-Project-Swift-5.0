//
//  HomeViewController.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 1/1/20.
//  Copyright © 2020 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapRegister(_ sender: Any) {
        let regVc = UIStoryboard.userStoryboard().instantiateViewController(identifier: "RegisterVC") as? RegisterViewController
        self.navigationController?.pushViewController(regVc!, animated: true)
    }
}
