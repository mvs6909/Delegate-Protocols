//
//  firstViewController.swift
//  Protocol
//
//  Created by Manav Shah on 4/29/22.
//

import UIKit

class firstViewController: UIViewController, sendData {
    
    

    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let secondView = segue.destination as! secondViewController
        secondView.recievedText = textField.text! // reading data from the textField and giving it to the next view controller
        secondView.delegate = self
        
        // Pass the selected object to the new view controller.
    }
    func send(message: String) {
        responseLabel.text = message
    }

}
