//
//  ProfileViewController.swift
//  Reservapp
//
//  Created by Edgar Gaytán on 4/10/18.
//  Copyright © 2018 Edgar Gaytán. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ProfileDelegate {
    
    
    @IBOutlet weak var contentView: ProfileView!
    
    func closeThis() {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
        // Do any additional setup after loading the view.
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
