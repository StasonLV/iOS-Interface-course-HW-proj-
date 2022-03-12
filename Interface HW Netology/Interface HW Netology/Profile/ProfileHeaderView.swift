//
//  ProfileHeaderView.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    var avatarImage: UIImageView?
    var nameLabel: UILabel?
    var statusLabel: UILabel?
    var statusButton: UIButton?
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        viewCreation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func viewCreation() {
        avatarImage = UIImageView()
        avatarImage?.layer.cornerRadius = 32
        addSubview(avatarImage!)
        
        nameLabel = UILabel()
        nameLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        addSubview(nameLabel!)
        
        statusLabel = UILabel()
        statusLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        addSubview(statusLabel!)
        
        statusButton = UIButton()
        statusButton?.backgroundColor = .systemBlue
        statusButton?.layer.cornerRadius = 4
        addSubview(statusButton!)
    }
    
    
    func constraintsCreation() {
        avatarImage?.translatesAutoresizingMaskIntoConstraints = false
        nameLabel?.translatesAutoresizingMaskIntoConstraints = false
        statusLabel?.translatesAutoresizingMaskIntoConstraints = false
        statusButton?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImage!.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            avatarImage!.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            avatarImage!.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            avatarImage!.widthAnchor.constraint(equalTo: avatarImage!.heightAnchor),
        
            nameLabel!.leadingAnchor.constraint(equalToSystemSpacingAfter: avatarImage!.trailingAnchor, multiplier: 1.0),
            nameLabel!.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            nameLabel!.bottomAnchor.constraint(equalTo: avatarImage!.centerYAnchor),
            
            statusLabel!.leadingAnchor.constraint(equalToSystemSpacingAfter: avatarImage!.trailingAnchor, multiplier: 1.0),
            statusLabel!.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            statusLabel!.topAnchor.constraint(equalTo: avatarImage!.centerYAnchor),
            
            statusButton!.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            statusButton!.topAnchor.constraint(equalToSystemSpacingBelow: avatarImage!.bottomAnchor, multiplier: 16.0),
            statusButton!.widthAnchor.constraint(equalTo: statusButton!.heightAnchor),
            statusButton!.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor)
        
        ])
    }
}

