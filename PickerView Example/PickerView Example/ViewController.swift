//
//  ViewController.swift
//  PickerView Example
//
//  Created by cemal tüysüz on 4.09.2021.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var selectedCountry:String?

    var countries = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkey","Germany","England","Russia","Italia"]
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    @IBAction func selectButton(_ sender: Any) {
        print(selectedCountry!)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Result.text = countries[row]
        selectedCountry = countries[row]
    }
}

