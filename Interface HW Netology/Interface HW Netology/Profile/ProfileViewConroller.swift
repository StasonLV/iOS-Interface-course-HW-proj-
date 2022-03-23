//
//  ProfileViewConroller.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileViewConroller: UIViewController {
    
    let profileHeader = ProfileHeaderView(frame: .zero)
    
    var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("title", for: .normal)
        button.frame.size = CGSize(width: 100, height: 50)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        profileHeader.avatarImageView.image = UIImage(named: "avatar.jpg")
        profileHeader.nameLabel.text = "Stanislav Lezovsky"
        profileHeader.statusLabel.text = "Waiting for something..."
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeader)
        view.addSubview(secondButton)
        
        NSLayoutConstraint.activate ([
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            profileHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            profileHeader.heightAnchor.constraint(equalToConstant: 220),
            
            secondButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            secondButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            secondButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

    }
    
    override func viewWillLayoutSubviews() {
        
    }
}
    
