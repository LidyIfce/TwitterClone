//
//  MainTabBarController.swift
//  TwitterClone
//
//  Created by Lidiane Gomes Barbosa on 23/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    // MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
   
   // MARK: Lifecycle

   override func viewDidLoad() {
       super.viewDidLoad()
    
        configureViewControllers()
        configureUI()
   }
    
    // MARK: Selectors
    
    @objc func actionButtonTapped(){
        print(123)
    }

   // MARK: Helpers
    
    func configureUI(){
        view.addSubview(actionButton)
        actionButton.anchor( bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 28
    }

    func configureViewControllers(){
        let feed = FeedController()
        let navFeed = templetaNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
         
        let explore = ExploreController()
        let navExplore = templetaNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
        let navNotifications = templetaNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let navConversations = templetaNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        viewControllers = [navFeed, navExplore, navNotifications, navConversations]
        
    }
    
    func templetaNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
