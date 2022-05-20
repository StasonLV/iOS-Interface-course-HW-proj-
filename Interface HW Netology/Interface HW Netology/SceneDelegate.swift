//
//  SceneDelegate.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 12.03.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
            func createFeedViewController() -> UINavigationController {
            let feedViewController = FeedViewController()
            feedViewController.title = "Лента"
            feedViewController.tabBarItem = UITabBarItem(
                title: "Лента",
                image: UIImage(systemName: "rectangle.and.pencil.and.ellipsis")?.withTintColor(
                    .systemBrown,
                    renderingMode: .alwaysOriginal
                ),
                tag: 0
            )
            return UINavigationController(rootViewController: feedViewController)
        }

        func createProfileViewController() -> UINavigationController {
            let profileViewController = LoginViewController()
            profileViewController.title = "Профиль"
            profileViewController.tabBarItem = UITabBarItem(
                title: "Профиль",
                image: UIImage(systemName: "rectangle.inset.topright.filled")?.withTintColor(
                    .systemBrown,
                    renderingMode: .alwaysOriginal
                ),
                tag: 1
            )
            return UINavigationController(rootViewController: profileViewController)
        }

        func createTabBarController() -> UITabBarController {
            let tabBarController = UITabBarController()
            UITabBar.appearance().backgroundColor = .systemFill
            UITabBar.appearance().tintColor = .white
            tabBarController.viewControllers = [createFeedViewController(), createProfileViewController()]
            return tabBarController
        }

        window?.rootViewController = createTabBarController()
        window?.makeKeyAndVisible()
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}
