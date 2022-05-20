//
//  InfoViewController.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 27.03.2022.
//

import UIKit

final class InfoViewController: UIViewController {
    lazy var actionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBrown
        button.layer.cornerRadius = 12
        button.setTitle("Алерт", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.addTarget(
            self,
            action: #selector(alertAction),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        setupActionButton()
    }

    private func setupActionButton() {
        self.view.addSubview(self.actionButton)
        self.actionButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        self.actionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.actionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.actionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc private func alertAction() {
        let alert = UIAlertController(
            title: "Алерт",
            message: "Тестовый алерт",
            preferredStyle: .actionSheet
        )
        let firstAction = UIAlertAction(
            title: "Первое действие",
            style: .default
        ) {_ in
            print("первое действие")
        }
        alert.addAction(firstAction)
        let secondAction = UIAlertAction(
            title: "Второе действие",
            style: .destructive
        ) {_ in
            print("второе действие")
        }
        alert.addAction(secondAction)
        present(alert, animated: true)
    }
}
