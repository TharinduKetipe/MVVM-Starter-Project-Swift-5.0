//
//  RegisterViewModel.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 12/31/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit
import MKProgress

class RegisterViewModel: NSObject {
    
    var user: User!
    var showAlert: (_ success:Bool, _ title:String, _ message:String) -> ()?
    
    required override init() {
        self.user = User()
        showAlert = {success, title, message in
        }
    }
    
    func createUser(name:String, age:String, salary:String) {
        self.user.name = name
        self.user.age = age
        self.user.salary = salary
    }
    
    func validateUser() -> Bool {
        if (self.user?.name!.isEmpty)! {
            self.showAlert(false,"Error.Alert.Title".localized(),"Required.Message.Name".localized())
            return false
        } else if (self.user?.salary!.isEmpty)! {
            self.showAlert(false, "Error.Alert.Title".localized(),"Required.Message.Salary".localized())
            return false
        } else if (self.user?.age!.isEmpty)! {
            self.showAlert(false, "Error.Alert.Title".localized(),"Required.Message.Age".localized())
            return false
        } else {
            return true
        }
    }
    
    func register()  {
        MKProgress.show()
        APIClient.shared.register(name: user!.name, salary: user!.salary, age: user!.age) { (status, response) in
            MKProgress.hide()
            if status == APIClient.APIResponseStatus.Success {
                self.showAlert(true, "Success.Alert.Title".localized(),"Success.Message.Register".localized())
            } else {
                self.showAlert(false, "Error.Alert.Title".localized(),"Error.Message.Register".localized())
            }
        }
    }

}
