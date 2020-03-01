//
//  SignUpViewController.swift
//  bitBucketProject
//
//  Created by Apple MacBook Pro on 1/30/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var sign: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SignUp Page"
        sign.layer.cornerRadius = 15
    }
    
    @IBAction func signAction(_ sender: Any) { let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
               self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func logAction(_ sender: Any) {
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc3, animated: true)
    }
    

}
