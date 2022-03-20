//
//  ProfileHeaderView.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        }()
    
    var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 80
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.translatesAutoresizingMaskIntoConstraints = false

        
        return image
        }()
    
    var statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        }()
    
    var statusButton: UIButton = {
       let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.frame.size = CGSize(width: 50, height: 50)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4,
                                           height: 4)
        button.addTarget(ProfileHeaderView.self,
                         action: #selector(printStatus),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        }()
    
    
    @objc func printStatus() {
        print("Status")
        }
    
    
    func setupView() {
            
            addSubview(avatarImageView)
            addSubview(nameLabel)
            addSubview(statusLabel)
            addSubview(statusButton)
        
        }
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)

            setupView()
            setupConstraints()
        
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)

            setupView()
        }
      
    
    func setupConstraints() {
    
    
    NSLayoutConstraint.activate([
        avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
        avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        avatarImageView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.heightAnchor, constant: 10),

        nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
        nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 34),
        nameLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        nameLabel.bottomAnchor.constraint(equalTo: avatarImageView.centerYAnchor),

        statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 34),
        statusLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        statusLabel.topAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
        statusLabel.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: 34),
        
        statusButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        statusButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
        statusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
        statusButton.heightAnchor.constraint(equalToConstant: 50)

            ])
        }
}


