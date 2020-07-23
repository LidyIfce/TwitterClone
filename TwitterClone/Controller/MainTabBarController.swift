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
        feed.tabBarItem.image = UIImage(named: "home_unselected")
         
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like_unselected")
        
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "mail")
        
        viewControllers = [feed, explore, notifications, conversations]
        
    }
}
