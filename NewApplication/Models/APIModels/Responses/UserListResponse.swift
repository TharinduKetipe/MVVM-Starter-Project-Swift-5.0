//
//  UserListResponse.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/6/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class UserListResponse: APIModel {

    var employees: [Employee] = []
    
    override func mapping(map: Map) {
        employees <- map["employee_name"]
//        salary <- map["employee_salary"]
//        age <- map["employee_age"]
//        employeeId <- map["id"]
//        profileImage <- map["profile_image"]
        
    }
}
