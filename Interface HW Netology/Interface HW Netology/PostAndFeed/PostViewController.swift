//
//  PostViewController.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 27.03.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Рнадомный пост"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(infoControl))

    }
    
    @objc private func infoControl() {
        let infoViewController = InfoViewController()
        self.navigationController?.pushViewController(infoViewController, animated: true)
        
    }
    
    private func setupView() {
        self.view.backgroundColor = .systemGray3
        self.navigationItem.title = titlePost
        //self.navigationItem.rightBarButtonItem = button
    }

}
