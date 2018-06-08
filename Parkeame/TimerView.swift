//
//  TimerView.swift
//  Reservapp
//
//  Created by Edgar Abraham Gaytán Quezada 03/04/18.

import UIKit
import Foundation

class TimerView: UIView {

    var seconds = 350
    var timer = Timer()
    var isTimerRunning = false
    
    var delegate : TimerDelegate? = nil
    
    @IBOutlet weak var timerLabel: UILabel!
    
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
        runTimer()
    }

    func runTimer()
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(TimerView.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer()
    {
        seconds -= 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    @IBAction func closeThis(_ sender: Any) {
        self.delegate?.closeThis()
    }
    
    @IBAction func endService(_ sender: Any) {
        self.delegate?.closeThis()
    }
    
}

extension UIView
{
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName,bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
