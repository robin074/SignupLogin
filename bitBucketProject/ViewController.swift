//
//  ViewController.swift
//  bitBucketProject
//
//  Created by Apple MacBook Pro on 1/30/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func messege(msg:String) {
       let alert = UIAlertController(title: "Did you are a register user", message: msg, preferredStyle: .alert)

       alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
       alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

       self.present(alert, animated: true)
    }
    
    @IBOutlet weak var Login: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationItem.title = "LogIn Page"
        Login.layer.cornerRadius = 15
    }

    @IBAction func SignUpAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    let name = "Abdullah"
    let email = "12345"
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var useremail: UITextField!
    @IBAction func LoginAction(_ sender: Any) {
        
        if((username.text! == "") && (useremail.text! == "")){
                  messege(msg: "Username and password is undefined")
              } else if(username.text! == ""){
                  messege(msg: "Username  is undefined")
              }else if(useremail.text! == ""){
                   messege(msg: "password  is undefined")
              }else{
                  if (username.text! == name) && (useremail.text! == email) {
                    let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController") as! tableViewController
                    self.navigationController?.pushViewController(vc1, animated: true)
                      
                      
                  }else{
                      messege(msg: "wrong user name or password")
                  }
              
              }
        
    }
    
    @IBAction func forgetPassword(_ sender: Any) {
        
        messege(msg: "Are you sure to send code")
    }
}

