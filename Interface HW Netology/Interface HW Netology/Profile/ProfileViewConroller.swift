//
//  ProfileViewConroller.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

final class ProfileViewConroller: UIViewController {
    
    let profileHeader = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with : event)
    }
    
    func setupView() {        
        profileHeader.statusSetText.delegate = self
        view.backgroundColor = .lightGray
        profileHeader.avatarImageView.image = UIImage(named: "avatar.jpg")
        profileHeader.nameLabel.text = "Stanislav Lezovsky"
        profileHeader.statusLabel.text = "Waiting for something..."
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.addSubview(profileHeader)

        NSLayoutConstraint.activate ([
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            profileHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            profileHeader.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
}

extension ProfileViewConroller: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        profileHeader.statusSetText.resignFirstResponder()
        
        return true
    }
}

