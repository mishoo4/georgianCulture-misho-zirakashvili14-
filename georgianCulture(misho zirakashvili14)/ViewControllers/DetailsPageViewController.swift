//
//  DetailsPageViewController.swift
//  georgianCulture(misho zirakashvili14)
//
//  Created by misho zirakashvili on 10.07.22.
//

import UIKit

class DetailsPageViewController: UIViewController {
    @IBOutlet public var username: UILabel!
    @IBOutlet public var email: UILabel!
    
    var correctUserName: String!
    var correctEmail: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        self.username.text = correctUserName
        self.email.text = correctEmail
    }
    

    @IBAction func signOut(_ sender: Any) {
        guard let myView = Bundle.main.loadNibNamed("TableViewCell", owner: nil,options: nil)![0] as? TableViewCell else {return}
        view.addSubview(myView)
        myView.yesButton = {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
            guard let vc = vc else {return}
            self.navigationController?.viewControllers = [vc]
        }
   
    }


}
