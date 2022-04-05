//
//  ProfileHeaderView.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

final class ProfileHeaderView: UIView {
    
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
        image.layer.cornerRadius = 60
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
        button.setTitle("Set status", for: .normal)
        button.frame.size = CGSize(width: 50, height: 50)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4,
                                           height: 4)
        button.addTarget(self,
                         action: #selector(setStatus),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var statusSetText: UITextField = {
        var textSet = UITextField()
        textSet.font = .systemFont(ofSize: 15, weight: .regular)
        textSet.layer.masksToBounds = true
        textSet.textColor = .black
        textSet.backgroundColor = .white
        textSet.layer.borderWidth = 1
        textSet.borderStyle = .roundedRect
        textSet.layer.cornerRadius = 12
        textSet.placeholder = "Set your status here..."
        textSet.translatesAutoresizingMaskIntoConstraints = false        
        return textSet
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    @objc func setStatus () {
        if let statusText = statusSetText.text {
            statusLabel.text = statusText
        } else if statusSetText.text == "" {
            statusLabel.text = "Waiting for something..."
        }
        statusSetText.text?.removeAll()
    }
    
    func setupView() {
        addSubview(avatarImageView)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(statusSetText)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            
            nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 150),
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            
            statusLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 150),
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            
            statusSetText.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 150),
            statusSetText.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            statusSetText.heightAnchor.constraint(equalToConstant: 40),
            
            statusButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            statusButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            statusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            statusButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}