//
//  MenuViewController.swift
//  Reservapp
//
//  Created by Edgar Abraham Gaytán Quezada on 03/04/18.
import UIKit
class MenuViewController: UIViewController{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cerrar(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
}

