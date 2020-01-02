//
//  UInt64+additions.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 10/20/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import Foundation

extension UInt64 {
    
    func megabytes() -> UInt64 {
        return self * 1024 * 1024
    }
    
}
