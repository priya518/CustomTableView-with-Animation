//
//  ViewController.swift
//  CustomTableView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    
    

    var arr = [["Image":  #imageLiteral(resourceName: "femalebackground.png") , "Name" : "Priya" , "Number" : "1234567890" , "Email" :                 "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "photo8") , "Name" : "Kajal" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "malebackground") , "Name" : "Tanvi" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "femalebackground.png") , "Name" : "Nilraj" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "photo8") , "Name" : "Yogesh" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "malebackground") , "Name" : "Nikunj" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "femalebackground.png") , "Name" : "Vijay" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
               ["Image":  #imageLiteral(resourceName: "photo8") , "Name" : "Dhruv" , "Number" : "1234567890" , "Email" : "p@123.gmail.com"],
             ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath) as! MyTableViewCell
        
        cell.img.image = self.arr[indexPath.row]["Image"] as? UIImage
        cell.Name.text = self.arr[indexPath.row]["Name"] as? String
        cell.Number.text = self.arr[indexPath.row]["Number"] as? String
        cell.Email.text = self.arr[indexPath.row]["Email"] as? String
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        //Animation 1
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0.5
        UIView.animate(withDuration: 1.0)
        {
             cell.layer.transform = CATransform3DIdentity
             cell.alpha = 1.0
        }
       
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

