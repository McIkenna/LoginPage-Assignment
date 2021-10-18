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
            let mainScreen = UIStoryboard(name: "Main", bundle: nil)
             let controller = mainScreen.instantiateViewController(withIdentifier: "TableViewNC")
            controller.modalTransitionStyle = .flipHorizontal
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
           // navigationController?.pushViewController(controller, animated: true)
            emailField.text = ""
            passwordField.text = ""
            message.text = ""
            emailField.backgroundColor = .white
            passwordField.backgroundColor = .white
        }else{
            message.text = "Email or Password is incorrect"
            emailField.backgroundColor = .red
            passwordField.backgroundColor = .red
        }
    
    }

}

