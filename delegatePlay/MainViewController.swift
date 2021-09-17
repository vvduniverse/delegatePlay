//
//  ViewController.swift
//  delegatePlay
//
//  Created by Vahtee Boo on 17.09.2021.
//

import UIKit

protocol SetTextFieldsDelegate {
    func setTextFields(name: String, surname: String)
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var fullnameLabel: UILabel!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SettingsViewController
        settingsVC.delegate = self
        settingsVC.name = nameLabel.text
        settingsVC.surname = surnameLabel.text
    }
}

extension MainViewController: SetTextFieldsDelegate {
    func setTextFields(name: String, surname: String) {
        nameLabel.text = name
        surnameLabel.text = surname
        fullnameLabel.text = name + " " + surname
    }
}

