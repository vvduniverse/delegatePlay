//
//  SettingsViewController.swift
//  delegatePlay
//
//  Created by Vahtee Boo on 17.09.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var name: String!
    var surname: String!
    
    var delegate: SetTextFieldsDelegate!

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonPressed() {
    }
    
    

}
