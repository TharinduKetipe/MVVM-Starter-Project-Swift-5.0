//
//  String+additions.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 10/19/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import Foundation

extension String {
    
    func dateFromIsoString() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        return dateFormatter.date(from: String(self))!
    }
    
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: Utilities.appLang(), value: "**\(self)**", comment: "")
    }
}
