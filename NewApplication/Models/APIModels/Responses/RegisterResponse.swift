//
//  RegisterResponse.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class RegisterResponse: APIModel {
    
    var name: String?
    var salary: String?
    var age: String?
    var userId: String?
        
        
        override func mapping(map: Map) {
            name <- map["name"]
            salary <- map["salary"]
            age <- map["age"]
            userId <- map["id"]
            responserError <- map["error"]
            
        }
}
