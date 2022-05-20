//
//  ProfileViewConroller.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class ProfileViewConroller: UIViewController {
    let cellID = "cellId"
    let arrayOfPosts = [f1Post, spacePost, motoPost, concertPost]
    let postsTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.scrollsToTop = true
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        postsTable.register(PostTableViewCell.self, forCellReuseIdentifier: cellID)
        postsTable.dataSource = self
        postsTable.delegate = self
        setupTable()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

    private func setupTable() {
        view.addSubview(postsTable)
        #if RELEASE
        view.backgroundColor = .cyan
        #else
        view.backgroundColor = .magenta
        #endif
        NSLayoutConstraint.activate([
            postsTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            postsTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            postsTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            postsTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension ProfileViewConroller: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        ProfileHeaderView().statusSetText.resignFirstResponder()
        return true
    }
}

extension ProfileViewConroller: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPosts.count
    }
    // swiftlint:disable line_length
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = postsTable.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? PostTableViewCell else {
            return UITableViewCell()
        }
        let currentPost = arrayOfPosts[indexPath.row]
        cell.post = currentPost
        return cell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: postsTable.frame.width, height: 220))
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 220
    }
}
