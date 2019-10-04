//
//  CatFormViewController.swift
//  MiaWouf
//
//  Created by Graphic Influence on 03/10/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class CatFormViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!
    @IBOutlet weak var majoritySwitch: UISwitch!
    @IBOutlet weak var genderSegmentControl: UISegmentedControl!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return catRaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return catRaces[row]
    }
    @IBAction func dismissKeyBoard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }
    @IBAction func validate() {
        createPetObject()
    }
    private func createPetObject() {
        let name = nameTextField.text
        let phone = phoneTextField.text
        let hasMajority = majoritySwitch.isOn
        let genderIndex = genderSegmentControl.selectedSegmentIndex
        let gender : Pet.Gender = (genderIndex == 0) ? .female : .male
        let raceIndex = racePickerView.selectedRow(inComponent: 0)
        let race = catRaces[raceIndex]
        let cat = Pet(name: name, hasMajority: hasMajority, phone: phone, gender: gender, race: race)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
