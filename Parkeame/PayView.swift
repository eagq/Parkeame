//
//  PayView.swift
//  Reservapp
//
//  Created by Edgar Abraham Gaytán Quezada on 03/04/18.

import UIKit

class PayView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    var delegateClose : PayDelegate? = nil
    
    @IBOutlet weak var tableView: UITableView!
    
    let array = ["VISA terminada en 4759", "MASTER CARD terminada en 8906", "AMERICAN EXPRESS terminada en 9076"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Tarjetas"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IdCelda", for: indexPath) as! TableViewCell
        let i = indexPath.row
        cell.textLabel?.text = "\(array[i])"
        return cell
    }
    
    @IBAction func closeThis(_ sender: Any) {
        self.delegateClose?.closeThis()
    }
    
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
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "IdCelda")
    }
}
