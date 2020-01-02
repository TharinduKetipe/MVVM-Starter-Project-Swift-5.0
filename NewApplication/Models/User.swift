//
//  User.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 12/31/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class User: NSObject {

    var name: String!
    var salary: String!
    var age: String!
    
    required override init() {
        self.name = ""
        self.salary = ""
        self.age = ""
    }
}
