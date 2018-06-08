//
//  ProfileView.swift
//  Reservapp
//
//  Created by Edgar Abraham Gaytán Quezada on 03/04/18.

import UIKit

class ProfileView: UIView {
    
    var delegate : ProfileDelegate? = nil
    
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
    
    @IBAction func closeThis(_ sender: Any) {
        self.delegate?.closeThis()
    }
    
    func commonInit()
    {
        let view  = loadNib()
        view.frame = bounds
        addSubview(view)
    }
}
