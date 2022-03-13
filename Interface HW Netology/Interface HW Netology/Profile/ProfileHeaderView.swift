//
//  ProfileHeaderView.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    var avatarImageView: UIImageView?
    var nameLabel: UILabel?
    var statusLabel: UILabel?
    var statusButton: UIButton?
    
    func setupView() {
            avatarImageView = UIImageView()
            avatarImageView?.layer.masksToBounds = true
            avatarImageView?.layer.cornerRadius = 80
            avatarImageView?.layer.borderWidth = 3
            avatarImageView?.layer.borderColor = UIColor.white.cgColor
            addSubview(avatarImageView!)

            nameLabel = UILabel()
            nameLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            nameLabel?.textColor = .black
            addSubview(nameLabel!)

            statusLabel = UILabel()
            statusLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            statusLabel?.textColor = .gray
            addSubview(statusLabel!)
        
            statusButton = UIButton()
            statusButton?.setTitle("Show status", for: .normal)
            statusButton?.frame.size = CGSize(width: 50, height: 50)
            statusButton?.layer.cornerRadius = 4
            statusButton?.backgroundColor = .systemBlue
            statusButton?.layer.cornerRadius = 4
            statusButton?.layer.shadowRadius = 4
            statusButton?.layer.shadowOpacity = 0.7
            statusButton?.layer.shadowOffset = CGSize(width: 4,
                                                  height: 4)
            statusButton?.addTarget(self, action: #selector(self.printStatus), for: .touchUpInside)
        statusButton?.addAction(
            UIAction { _ in
                print("Status")
            }, for: .touchUpInside
        )
            addSubview(statusButton!)
        
        }
    
    @objc func printStatus(sender: UIButton!) {
        print("Status")
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
        avatarImageView!.translatesAutoresizingMaskIntoConstraints = false
        nameLabel!.translatesAutoresizingMaskIntoConstraints = false
        statusLabel!.translatesAutoresizingMaskIntoConstraints = false
        statusButton!.translatesAutoresizingMaskIntoConstraints = false
    
    
    NSLayoutConstraint.activate([
        avatarImageView!.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
        avatarImageView!.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        avatarImageView!.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        avatarImageView!.widthAnchor.constraint(equalTo: avatarImageView!.heightAnchor, constant: 10),

        nameLabel!.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
        nameLabel!.leadingAnchor.constraint(equalTo: avatarImageView!.trailingAnchor, constant: 34),
        nameLabel!.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        nameLabel!.bottomAnchor.constraint(equalTo: avatarImageView!.centerYAnchor),

        statusLabel!.leadingAnchor.constraint(equalTo: avatarImageView!.trailingAnchor, constant: 34),
        statusLabel!.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        statusLabel!.topAnchor.constraint(equalTo: avatarImageView!.centerYAnchor),
        statusLabel!.bottomAnchor.constraint(equalTo: statusButton!.topAnchor, constant: 34),
        
        statusButton!.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        statusButton!.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
        statusButton!.topAnchor.constraint(equalTo: avatarImageView!.bottomAnchor, constant: 16),
        statusButton!.heightAnchor.constraint(equalToConstant: 50)

    ])
    }
}


