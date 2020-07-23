//
//  ConversationsViewController.swift
//  TwitterClone
//
//  Created by Lidiane Gomes Barbosa on 23/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {

    // MARK: - Properties
       
   // MARK: Lifecycle

   override func viewDidLoad() {
       super.viewDidLoad()
        configureUI()
   }

   // MARK: Helpers
    func configureUI(){
           view.backgroundColor = .white
           navigationItem.title = "Messages"
       }
}
