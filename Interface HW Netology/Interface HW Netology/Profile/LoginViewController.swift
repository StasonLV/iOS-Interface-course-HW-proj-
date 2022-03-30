//
//  LoginViewController.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 30.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    let loginText: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray6
        textField.placeholder = "Email or phone"
        textField.font = .systemFont(ofSize: 16)
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    let passwordText: UITextField = {
        let passField = UITextField()
        passField.backgroundColor = .systemGray6
        passField.placeholder = "Password"
        passField.font = .systemFont(ofSize: 16)
        passField.autocapitalizationType = .none
        passField.isSecureTextEntry = true
        passField.translatesAutoresizingMaskIntoConstraints = false
        
        return passField
    }()
    let loginStack: UIStackView = {
        let stack = UIStackView()
        //stack.layer.borderColor = .lightGray
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 10
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false

        
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoginView()
    }
    
    func setupLoginView() {
        view.backgroundColor = .white
        view.addSubview(loginStack)
        loginStack.addArrangedSubview(loginText)
        loginStack.addArrangedSubview(passwordText)
        loginStack.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        
        NSLayoutConstraint.activate([
            loginStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300),
            loginStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 300),

        ])

    }
}
