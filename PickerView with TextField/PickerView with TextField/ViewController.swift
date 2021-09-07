//
//  ViewController.swift
//  PickerView with TextField
//
//  Created by cemal tüysüz on 4.09.2021.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var country: UITextField!
    var pickerView : UIPickerView?
    var countries = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = ["Turkey","England","Germany","Australia"]
        
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        
        country.inputView = pickerView
        
        
    }

    // how many column ?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // how many row ?
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    // which countr ?
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    // Select handler
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        country.text = countries[row]
    }

}

