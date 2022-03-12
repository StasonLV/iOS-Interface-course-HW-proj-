//
//  ProfileViewConroller.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileViewConroller: UIViewController {
    
    let profileHeader: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.frame = CGRect(
            x: 50,
            y: 60,
            width: 300,
            height: 300
        )
        view.avatarImage?.image = UIImage(named: "avatar")
        view.nameLabel?.text = "Stas Lezovsky"
        view.statusLabel?.text = "Listening to..."
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        
        let profileHeader = ProfileHeaderView(frame: .zero)
        profileHeader.avatarImage?.image = UIImage(named: "avatar")
        profileHeader.nameLabel?.text = "Stas Lezovsky"
        profileHeader.statusLabel?.text = "Listening to..."

        view.addSubview(profileHeader)
        
    }

    
}
