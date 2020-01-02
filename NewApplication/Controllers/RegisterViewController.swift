//
//  RegisterViewController.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 12/31/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSalary: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    
    let viewModel = RegisterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel.showAlert = { success, title, message in
            self.handleAlert(title: title, message: message, success: success)
        }
    }
    

    @IBAction func didTapRegister(_ sender: Any) {
        
        self.viewModel.createUser(name: self.txtName.text!, age: self.txtAge.text!, salary: self.txtSalary.text!)
        
        if self.viewModel.validateUser() {
            self.viewModel.register()
        }
    }
}

extension RegisterViewController {
    
    func handleAlert(title:String, message:String, success:Bool) {
        Utilities.AlertWithOkAction(view: self, title: title, message: message)
        if success {
            self.txtName.text = ""
            self.txtAge.text = ""
            self.txtSalary.text = ""
        }
    }
}
