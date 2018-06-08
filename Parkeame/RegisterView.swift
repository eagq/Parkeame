//
//  RegisterView.swift
//  Parkeame
//
//  Created by Edgar Gaytán on 6/5/18.
//

import UIKit
import Firebase

class RegisterView: UIView {
    
    var delegate : RegisterDelegate? = nil
    
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit()
    {
        let view  = loadNib()
        view.frame = bounds
        addSubview(view)
    }
    
    @IBAction func payMethod(_ sender: Any)
    {
        
    }
    
    @IBAction func register(_ sender: Any)
    {
        
    }
    
    @IBAction func closeThis(_ sender: Any)
    {
        self.delegate?.closeThis()
    }
}
