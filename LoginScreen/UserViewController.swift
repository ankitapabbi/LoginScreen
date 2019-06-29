//
//  UserViewController.swift
//  LoginScreen
//
//  Created by Ankita Pabbi on 2019-06-28.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    var emailId: String?
    @IBOutlet weak var userEmailShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let e = emailId{
            print(e)
            self.userEmailShow.text = "Welcome, \(e)"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
