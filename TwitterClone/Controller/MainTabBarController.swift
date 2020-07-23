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
   
   // MARK: Lifecycle

   override func viewDidLoad() {
       super.viewDidLoad()
    
        configureViewControllers()
   }

   // MARK: Helpers

    func configureViewControllers(){
        let feed = FeedController()
        let navFeed = templetaNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
         
        let explore = ExploreController()
        let navExplore = templetaNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
        let navNotifications = templetaNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let navConversations = templetaNavigationController(image: UIImage(named: "mail"), rootViewController: conversations)
        
        viewControllers = [navFeed, navExplore, navNotifications, navConversations]
        
    }
    
    func templetaNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
    
}
