//
//  LoginView.swift
//  Parkeame
//
//  Created by Edgar Gaytán on 6/5/18.
//

import UIKit
import Firebase

class LoginView: UIView {
    
    var delegate : LoginDelegate? = nil
    
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
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: correo.text!, password: pass.text!, completion: { (user, error) in
            if(error != nil){
                print("Valió verga")
            }
            else{
                self.delegate?.logIn()
            }
        })
    }
    
    @IBAction func register(_ sender: Any)
    {
        
    }
    
}
