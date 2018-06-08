//
//  AboutViewController.swift
//  Reservapp
//
//  Created by Edgar Gaytán on 4/10/18.
//  Copyright © 2018 Edgar Gaytán. All rights reserved.
//

import Foundation
import UIKit

class AboutViewController: UIViewController, AboutDelegate {
    
    @IBOutlet weak var contentView: AboutView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeThis()
    {
        self.dismiss(animated: true, completion: nil)
    }
}
