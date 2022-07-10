//
//  ViewController.swift
//  georgianCulture(misho zirakashvili14)
//
//  Created by misho zirakashvili on 10.07.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet public var username: UITextField!
    @IBOutlet public var password: UITextField!
    
    var userNameRegistration: String?
    var emailRegistration: String?
    var passwordRegistration: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func alert() {
        let alertController = UIAlertController(title: "alert", message: "incorrect credentials", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alertController.addAction(action)
        self.navigationController?.present(alertController, animated: true)
    }
    
    @IBAction func signin(_ sender: UIButton) {
        if username.text == userNameRegistration
            && password.text == passwordRegistration {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "DetailsPageViewController") as? DetailsPageViewController
            guard let vc = vc else {return}
            vc.correctUserName = passwordRegistration
            vc.correctEmail = emailRegistration
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else {
            alert()
        }
    }
    
    @IBAction func signup(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegistrationPageViewController") as? RegistrationPageViewController
        guard let vc = vc else {return}
        vc.usersEmail = { value in
            self.emailRegistration = value
        }
        vc.usersUsername = { value in
            self.userNameRegistration = value
        }
        vc.usersPassword = { value in
            self.passwordRegistration = value
        }
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
