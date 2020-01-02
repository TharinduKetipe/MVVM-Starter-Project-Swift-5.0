//
//  UiStoryboard+Extensions.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 1/1/20.
//  Copyright © 2020 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func mainStoryboard() -> (UIStoryboard) {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main)
    }
    
    static func userStoryboard() -> (UIStoryboard) {
        return UIStoryboard.init(name: "User", bundle: Bundle.main)
    }

}
