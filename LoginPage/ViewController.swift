//
//  ViewController.swift
//  LoginPage
//
//  Created by New Account on 10/15/21.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var emailField: UITextField!
   @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var message : UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    let email : String = "sontoly@gmail.com"
    let password : String = "ikenna"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickLoginBtn(_ sender : Any){
        
        if(emailField.text == email && passwordField.text == password ){
                 let controller = storyboard?.instantiateViewController(withIdentifier: "TableViewNC") as! UINavigationController
                 controller.modalPresentationStyle = .fullScreen
                 self.present(controller, animated: true, completion: nil)
            message.text = " "
        }else{
            message.text = "Email or Password is incorrect"
            emailField.backgroundColor = .red
            passwordField.backgroundColor = .red
        }
    
    }

}

