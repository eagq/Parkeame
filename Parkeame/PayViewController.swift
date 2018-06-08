//
//  PayViewController.swift
//  Reservapp
//
//  Created by Edgar Gaytán on 4/10/18.
//  Copyright © 2018 Edgar Gaytán. All rights reserved.
//

import UIKit

class PayViewController: UIViewController, PayDelegate {

    @IBOutlet weak var contentView: PayView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        contentView.delegateClose = self
        // Dispose of any resources that can be recreated.
    }
    
    func closeThis() {
        self.dismiss(animated: true)
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
