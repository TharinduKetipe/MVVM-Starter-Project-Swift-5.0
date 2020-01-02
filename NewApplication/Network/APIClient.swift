//
//  APIClient.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class APIClient: NSObject {
    
    enum APIResponseStatus : Int {
        case Success = 200
        case Failure = -1
        case SuccessAlso = 201
        case ValidationError = 409
        case BadRequest = 400
        case UnAuthorized = 401
        case NotFound = 404
        case InternalServerError = 500
        case Other
    }
    
    static let shared = APIClient()
    
    func getHTTPHeaders() -> HTTPHeaders? {
        return ["Content-Type" : "application/json",
        ]
    }
}

extension APIClient {
    
    //API Mapping for normal response with keys and objects
    func register(name:String, salary:String, age:String, completion:@escaping (APIResponseStatus, RegisterResponse?) -> Void) {
        let params = [APIRequestKeys.name:name, APIRequestKeys.salary:salary, APIRequestKeys.age:age]
        let request = Alamofire.request( Constants.baseDummy + APIRequestMetod.register,
                                  method: .post,
                                  parameters: params as Parameters,
                                  encoding: JSONEncoding.default,
                                  headers: self.getHTTPHeaders())
        request.responseObject {
            (response:DataResponse<RegisterResponse>) in
            switch response.result {
            case .success(_):
                completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, response.value!)
            case .failure(_):
                completion(APIClient.APIResponseStatus.Other, nil)
            }
        }
    }
    
    //API Update (PUT) Example
    func updateUser(name:String, salary:String, age:String, userId:String, completion:@escaping (APIResponseStatus, RegisterResponse?) -> Void) {
        let params = [APIRequestKeys.name:name, APIRequestKeys.salary:salary, APIRequestKeys.age:age]
        let request = Alamofire.request( Constants.baseDummy + APIRequestMetod.userUpdate + userId,
                                  method: .put,
                                  parameters: params as Parameters,
                                  encoding: JSONEncoding.default,
                                  headers: self.getHTTPHeaders())
        request.responseObject {
            (response:DataResponse<RegisterResponse>) in
            switch response.result {
            case .success(_):
                completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, response.value!)
            case .failure(_):
                completion(APIClient.APIResponseStatus.Other, nil)
            }
        }
    }
    
    //API Mapping for Response array without any key
    func employees(completion:@escaping (APIResponseStatus, [Employee]?) -> Void) {
        let request = Alamofire.request( Constants.baseDummy + APIRequestMetod.employees,
                                  method: .get,
                                  encoding: JSONEncoding.default,
                                  headers: self.getHTTPHeaders())
        
        request.responseArray { (response: DataResponse<[Employee]>) in
            switch response.result {
            case let .success(value):
                completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, value)
            case .failure(_):
                completion(APIClient.APIResponseStatus.Other, nil)
            }
        }
    }
    
    //API Mapping for Get object with ID
    func employee(empId:String, completion:@escaping (APIResponseStatus, Employee?) -> Void) {
        let request = Alamofire.request( Constants.baseDummy + APIRequestMetod.employee + empId,
                                  method: .get,
                                  encoding: JSONEncoding.default,
                                  headers: self.getHTTPHeaders())
        
        request.responseObject {
            (response:DataResponse<Employee>) in
            switch response.result {
            case .success(_):
                completion(APIClient.APIResponseStatus(rawValue: (response.response?.statusCode)!)!, response.value!)
            case .failure(_):
                completion(APIClient.APIResponseStatus.Other, nil)
            }
        }
    }
    
}

