//
//  secondViewController.swift
//  Protocol
//
//  Created by Manav Shah on 4/29/22.
//

import UIKit


protocol sendData{
    func send(message: String)
}

class secondViewController: UIViewController {
    
    @IBOutlet weak var recievedLabel: UILabel!
    var recievedText:String = "" //declaring a variable to recieve data
    var delegate:sendData?

    override func viewDidLoad() {
        super.viewDidLoad()
        recievedLabel.text = recievedText //giving data to the label
        delegate?.send(message:String(recievedText.reversed()))
        // Do any additional setup after loading the view.
    }
}
