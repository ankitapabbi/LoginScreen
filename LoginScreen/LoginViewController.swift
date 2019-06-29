//
//  ViewController.swift
//  LoginScreen
//
//  Created by Ankita Pabbi on 2019-06-28.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    var userDict: [String : String] = ["ankita@gmail.com" : "anku123",
    "vishal@gmail.com" : "vish123",
    "diksha@gmail.com" : "diskah123"]
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func btnLogin(_ sender: Any) {
     
        
        var email = self.userEmail.text!
        var password = self.userPassword.text!
        
        if let em = userDict[email]
        { //user exist
            
            if password == em
            {
                
                
                //            let alert = UIAlertController(title: "Good Job !", message: "Logged In", preferredStyle: UIAlertController.Style.actionSheet)
                //
                //            //Step 2 OK Button Add
                //            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                //               let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                //               let actionDis = UIAlertAction(title: "Destructive", style: UIAlertAction.Style.destructive, handler: nil)
                //
                //            //Step 3 Add button To Alert
                //            alert.addAction(actionOk)
                //            alert.addAction(actionCanel)
                //            alert.addAction(actionDis)
                //            // Step 4 Present Alert Box To user
                //            self .present(alert, animated: true ,completion: nil)
                //
                // Step - 1 Mention Storyboard Id of View Controller
                // Step - 2 Get the reference of Stroyboard
                let sb = UIStoryboard(name: "Main", bundle: nil)
                
                // Step - 3 GEt reference of View Controller Using storyBoard id
                
                let userVC = sb.instantiateViewController(withIdentifier: "UserVC") as! UserViewController
                
                userVC.emailId = self.userEmail.text
                // step - 4 Navigate or present
                //self.present(userVC, animated: true,completion: nil)
                self.navigationController?.pushViewController(userVC,animated: true)
                
            }
            else
            {
                // alert for password wrong
                let alert = UIAlertController(title: "Error", message: "Password Incorrect", preferredStyle: UIAlertController.Style.alert)
                //Step 2 OK Button Add
                let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                
                
                
                
                //Step 3 Add button To Alert
                alert.addAction(actionOk)
                alert.addAction(actionCanel)
                
                
                // Step 4 Present Alert Box To user
                self .present(alert, animated: true ,completion: nil)
                
            }
            
        }
        else
        {
            
            //user not exist
            
            let alert = UIAlertController(title: "Error", message: "User Email / Password Incorrect", preferredStyle: UIAlertController.Style.alert)
            //Step 2 OK Button Add
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            let actionDis = UIAlertAction(title: "Destructive", style: UIAlertAction.Style.destructive, handler: nil)
            let actionCanel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            
            
            
            
            //Step 3 Add button To Alert
            alert.addAction(actionOk)
            alert.addAction(actionCanel)
            alert.addAction(actionDis)
            
            
            // Step 4 Present Alert Box To user
            self .present(alert, animated: true ,completion: nil)
        }
        
            
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.title = "Login"
    }


}

