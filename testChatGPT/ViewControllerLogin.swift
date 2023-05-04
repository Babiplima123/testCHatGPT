//
//  ViewController.swift
//  testChatGPT
//
//  Created by Barbara Ann Pereira Lima on 27/03/23.
//

import UIKit

class ViewController: UIViewController {

    let welcomeLabel = UILabel()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let submitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLabel()
        setupTextFields()
        setupButton()
    }

    func setupLabel() {
        view.addSubview(welcomeLabel)

        // Configure the label
        welcomeLabel.text = "Seja bem-vindo"
        welcomeLabel.textColor = .black
        welcomeLabel.font = .systemFont(ofSize: 20)
        welcomeLabel.sizeToFit()
        welcomeLabel.center = view.center
    }

    func setupTextFields() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)

        // Configure the username text field
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.placeholder = "Usuário"
        usernameTextField.frame = CGRect(x: view.center.x - 150, y: view.center.y - 25, width: 300, height: 30)

        // Configure the password text field
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholder = "Senha"
        passwordTextField.frame = CGRect(x: view.center.x - 150, y: view.center.y + 25, width: 300, height: 30)
    }

    func setupButton() {
        view.addSubview(submitButton)

        // Configure the button
        submitButton.setTitle("Enviar", for: .normal)
        submitButton.setTitleColor(.black, for: .normal)
        submitButton.frame = CGRect(x: view.center.x - 75, y: view.center.y + 75, width: 150, height: 30)
    }

}


