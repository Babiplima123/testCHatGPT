//
//  ViewControllerPaises.swift
//  testChatGPT
//
//  Created by Barbara Ann Pereira Lima on 27/03/23.
//

import UIKit

let countries = ["Brasil", "Itália", "Estados Unidos"]

let pickerView = UIPickerView()
pickerView.dataSource = self
pickerView.delegate = self

extension MyViewController: UIPickerViewDataSource, UIPickerViewDelegate {
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
          // aqui você pode executar seu callback para enviar a seleção
          // de volta para sua view controller
      }
  }

view.addSubview(pickerView)

let storyboard = UIStoryboard(name: "MyStoryboard", bundle: nil)

let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")

vc.show(vc, sender: self)
