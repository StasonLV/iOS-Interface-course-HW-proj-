//
//  ProfileViewConroller.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileViewConroller: UIViewController {
    
    let profileHeader = ProfileHeaderView(frame: .zero)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        profileHeader.avatarImageView.image = UIImage(named: "avatar.jpg")
        profileHeader.nameLabel.text = "Stanislav Lezovsky"
        profileHeader.statusLabel.text = "Waiting for something..."
        view.addSubview(profileHeader)

    }
    
    override func viewWillLayoutSubviews() {
        profileHeader.frame = CGRect(x: 0, y: 20, width: view.frame.size.width, height: 250)
    }
}
    
