//
//  LoginViewController.swift
//  Parkeame
//
//  Created by Edgar Gaytán on 6/5/18.
//  Copyright © 2018 Edgar Gaytán. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginDelegate {
    
    func addRegister() {
        
    }
    
    @IBOutlet weak var contentView: LoginView!
    
    func logIn() {
        self.performSegue(withIdentifier: "LoginSuccess", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */

}
