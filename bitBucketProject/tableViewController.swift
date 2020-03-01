//
//  tableViewController.swift
//  bitBucketProject
//
//  Created by Apple MacBook Pro on 1/30/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class tableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
var imageArray = ["p1","p2","p3","p4","p5"]
    var nameArray = ["Abdulla","Abdullah","Abdur Rob","Irfan","Raj"]
     var ageArray = ["25","26","27","28","29"]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "TableView Page"
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imageCell.image = UIImage(named: imageArray[indexPath.row])
        cell.label1.text = nameArray[indexPath.row]
        cell.label2.text = ageArray[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
        
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc4 = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        vc4.showImage = UIImage(named: imageArray[indexPath.row])
        vc4.Name = nameArray[indexPath.row]
        vc4.Age = ageArray[indexPath.row]
        self.navigationController?.pushViewController(vc4, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }

}
