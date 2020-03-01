//
//  ImageViewController.swift
//  bitBucketProject
//
//  Created by Apple MacBook Pro on 1/30/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var label1Show1: UILabel!
    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var label2Show2: UILabel!
    
    @IBOutlet weak var goHome: UIButton!
    var showImage:UIImage?
    var Name = ""
    var Age = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ImageShow Page"
        goHome.layer.cornerRadius = 15
        label1Show1.text = Name
        label2Show2.text = Age
        imageShow.image = showImage
        
    }
    

   
    @IBAction func goAction(_ sender: Any) {
        let vc5 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc5, animated: true)
        
    }
}
