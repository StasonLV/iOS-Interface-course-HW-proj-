//
//  LoginViewController.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 30.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        return scroll
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .systemBlue
        //button.setBackgroundImage(tintedImage, for: .normal)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(
                        self,
                        action: #selector(loginAction),
                        for: .touchUpInside
        )
        return button
    }()
    
    //static let buttonImage = UIImage(named: "pixel")
    //static let tintedImage = buttonImage?.withRenderingMode(.alwaysTemplate)
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let loginText: UITextField = {
        let textField = UITextField()
        textField.setLeftPaddingPoints(20)
        textField.backgroundColor = .systemGray6
        textField.placeholder = "Email or phone"
        textField.font = .systemFont(ofSize: 16)
        textField.autocapitalizationType = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordText: UITextField = {
        let passField = UITextField()
        passField.setLeftPaddingPoints(20)
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
        stack.layer.borderColor = UIColor.lightGray.cgColor
        stack.axis = .vertical
        stack.layer.borderWidth = 0.5
        stack.layer.cornerRadius = 10
        stack.spacing = 0.5
        stack.layer.masksToBounds = true
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    let content: UIContentView = {
        let content = UIContentView(setupLoginView())
        return content
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoginView()
        self.hideKeyboardWhenTappedAround()
    }
    
    @objc func loginAction() {
        let nextVC = ProfileViewConroller()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func kbdShow(notification: NSNotification) {
        if let kbdSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            scrollView.contentInset.bottom = kbdSize.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbdSize.height, right: 0)
        }
    }
    @objc private func kbdHide(notification: NSNotification) {
        scrollView.contentInset.bottom = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
    }
    
    func setupLoginView() {
        super.navigationController?.setNavigationBarHidden(true, animated: false)
        view.backgroundColor = .systemGray5
        image.image = UIImage(named: "logo")
        view.addSubview(loginButton)
        view.addSubview(image)
        view.addSubview(loginStack)
        loginStack.addArrangedSubview(loginText)
        loginStack.addArrangedSubview(passwordText)
        
        NSLayoutConstraint.activate([
            loginStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginStack.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 120),
            loginStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginStack.heightAnchor.constraint(equalToConstant: 100),
            image.heightAnchor.constraint(equalToConstant: 100),
            image.widthAnchor.constraint(equalToConstant: 100),
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: loginStack.bottomAnchor, constant: 16),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])

    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
