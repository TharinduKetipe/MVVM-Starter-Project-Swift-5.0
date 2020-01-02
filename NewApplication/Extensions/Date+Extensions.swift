//
//  Date+additions.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 10/19/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import Foundation

extension Date {
    
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
