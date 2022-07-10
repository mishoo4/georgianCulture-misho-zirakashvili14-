//
//  RegistrationPageViewController.swift
//  georgianCulture(misho zirakashvili14)
//
//  Created by misho zirakashvili on 10.07.22.
//

import UIKit

class RegistrationPageViewController: UIViewController {
    
    @IBOutlet public var username: UITextField!
    @IBOutlet public var email: UITextField!
    @IBOutlet public var password: UITextField!
    
    var usersUsername:((String) -> ())?
    var usersEmail:((String) -> ())?
    var usersPassword:((String) -> ())?
    
//    func checkPassword(_ password: String) -> {
//        var containsSymbol = false
//        var containsUppercase = false
//    }
//    for character  in password {
//        if "QWERTYUIOPASDFGHJKLZXCVBNM".contains(Character) {
//            containsUppercase = true
//        }
//        if "!@#$%^&*()_+=-\|}{[]';:.><?/,|".contains(Character) {
//            containsSymbil = true
//        }
//    }
//    if passwordLenght > 8 && containsSymbol && containsUppercase {
//        return 1
//    } else {
//        return 0
//    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    func allFilled() -> Bool {
        if username.hasText && email.hasText && password.hasText {
            return true
        }
        return false
    }
    func alert() {
        let alert = UIAlertController(title: "alert", message: "please fill in all fields", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(action)
        self.navigationController?.present(alert, animated: true)
    }
    @IBAction func signUp(_ sender: Any) {
        if allFilled() {
            usersUsername?(username.text!)
            usersEmail?(email.text!)
            usersPassword?(password.text!)
            navigationController?.popViewController(animated: true)
        }else {
            alert()
        }
    }
    @IBAction func backToMain(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
