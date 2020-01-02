//
//  ResponseError.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 8/6/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import ObjectMapper

class ResponseError: APIModel {
    
    var errorText: String?
    
    override func mapping(map: Map) {
        errorText <- map["text"]
    }

}
