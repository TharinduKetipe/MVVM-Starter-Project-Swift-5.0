//
//  Constants.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import Foundation

struct Constants {
    static let baseDummy = "http://dummy.restapiexample.com/"
    static let mockUrl = "api/contractor/shifts/"
}

struct APIRequestMetod {
    static let userList = "api/users?page=2"
    static let register = "api/v1/create?name=test&salary=2000&age=20"
    static let employees = "api/v1/employees"
    static let employee = "api/v1/employee/"
    static let userUpdate = "api/v1/update/"
}

struct APIRequestKeys {
    static let email = "email"
    static let password = "password"
    static let name = "name"
    static let salary = "salary"
    static let age = "age"
}
