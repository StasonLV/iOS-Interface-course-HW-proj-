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
        profileHeader.statusSetText.delegate = self
        view.backgroundColor = .lightGray
        profileHeader.avatarImageView.image = UIImage(named: "avatar.jpg")
        profileHeader.nameLabel.text = "Stanislav Lezovsky"
        profileHeader.statusLabel.text = "Waiting for something..."
        view.addSubview(profileHeader)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with : event)
         }
    
    override func viewWillLayoutSubviews() {
        profileHeader.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
    }
}

extension ProfileViewConroller: UITextFieldDelegate {

     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         profileHeader.statusSetText.resignFirstResponder()

         return true
     }
 }
