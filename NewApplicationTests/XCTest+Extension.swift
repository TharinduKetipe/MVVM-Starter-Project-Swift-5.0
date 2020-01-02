//
//  XCTest+Extension.swift
//  TestApplicationTests
//
//  Created by Tharindu Ketipearachchi on 9/7/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import Mockingjay
import XCTest
@testable import TestApplication

extension XCTest {
    
    public func startStubs() {
        
        let validDataPath = Bundle(for: type(of: self)).path(forResource: "JobsSuccess", ofType: "json")!
        let jobsData = NSData(contentsOfFile: validDataPath)!
        stub(uri(Constants.mockUrl + "data"), jsonData(jobsData as Data))
        
        let notFoundStub = http(404, headers: nil, download: nil)
        stub(uri(Constants.mockUrl + "notfound"), notFoundStub)
    }
}
