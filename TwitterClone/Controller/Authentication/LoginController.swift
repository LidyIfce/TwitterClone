//
//  LoginController.swift
//  TwitterClone
//
//  Created by Lidiane Gomes Barbosa on 24/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class LoginController:UIViewController{
    
    // MARK: - Properties
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "TwitterLogo")
        return iv
    }()
    
    private lazy var emailContainerView: UIView = configureContainer(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x-1"), label: "Email")
       
    private lazy var passwordContainerView: UIView = configureContainer(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"), label: "Password")
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
 
    
    // MARK: - Selectors
    
    // MARK: - Helpers
    
    func configureContainer(image:UIImage, label: String) -> UIView{
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        view.backgroundColor = .red
        
        let iv = UIImageView()
        iv.image = image
        
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        return view
    }
    
    func configureUI(){
        view.backgroundColor = .twitterBlue
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(logoImageView)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        logoImageView.setDimensions(width: 150, height: 150)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.spacing = 8
      
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
}
