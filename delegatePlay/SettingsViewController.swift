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
    
    @IBAction func doneButtonPressed() {
        guard let name = nameTF.text else { return}
        guard let surname = surnameTF.text  else { return }
        delegate.setTextFields(name: name, surname: surname)
        dismiss(animated: true)
    }
}
