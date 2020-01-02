//
//  APIModel.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/5/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class APIModel: Mappable {
    
    var message:String?
    var responserError: ResponseError?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
    }
    

}
