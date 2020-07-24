//
//  RegistrationController.swift
//  TwitterClone
//
//  Created by Lidiane Gomes Barbosa on 24/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit
class RegistrationController:UIViewController{
    
    // MARK: - Properties
    
    private let plusPhotoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus_photo"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(handleAddProfilePhoto), for: .touchUpInside)
        return button
    }()
    
    private lazy var emailContainerView: UIView = {
           let image = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1")
           let view = Utilities.inputContainerView(withImage: image,textField: emailTextFied)
           return view
       }()
          
       private lazy var passwordContainerView: UIView = {
           let image = #imageLiteral(resourceName: "ic_lock_outline_white_2x")
           let view = Utilities.inputContainerView(withImage: image, textField: passwordTextFied)
           return view
       }()
    
    private lazy var fullNameContainerView: UIView = {
              let image = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1")
              let view = Utilities.inputContainerView(withImage: image,textField: fullNameTextFied)
              return view
          }()
             
          private lazy var usernameContainerView: UIView = {
              let image = #imageLiteral(resourceName: "ic_lock_outline_white_2x")
              let view = Utilities.inputContainerView(withImage: image, textField: usernameTextFied)
              return view
          }()
       
       private let emailTextFied: UITextField = {
           let tf = Utilities.textField(withPlaceholder: "Email")
          
           return tf
       }()
       
       private let passwordTextFied: UITextField = {
           let tf = Utilities.textField(withPlaceholder: "Placeholder")
           tf.isSecureTextEntry = true
              return tf
          }()
        private let fullNameTextFied: UITextField = {
                  let tf = Utilities.textField(withPlaceholder: "Full Name")
                 
                  return tf
              }()
          
          private let usernameTextFied: UITextField = {
              let tf = Utilities.textField(withPlaceholder: "Username")
              tf.isSecureTextEntry = true
                 return tf
             }()
    
    
        private let registrationButton: UIButton = {
              let button = UIButton(type: .system)
              button.setTitle("Sign Up", for: .normal)
              button.setTitleColor(.twitterBlue, for: .normal)
              button.backgroundColor = .white
              button.heightAnchor.constraint(equalToConstant: 50).isActive = true
              button.layer.cornerRadius = 5
              button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
              button.addTarget(self, action: #selector(handleRegistration), for: .touchUpInside)
              return button
          }()
    
        private let alreadyHaveAccountButton: UIButton = {
               let button = Utilities.attributedButton("Already have an account?", " Log In")
               button.addTarget(self, action: #selector(handleShowLogIn), for: .touchUpInside)
               return button
           }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleShowLogIn(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func handleRegistration(){
        print("handle sign up")
    }
    
    @objc func handleAddProfilePhoto(){
        print("add photo...")
    }
    
    // MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .twitterBlue
        
        view.addSubview(plusPhotoButton)
             plusPhotoButton.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
             plusPhotoButton.setDimensions(width: 128, height: 128)
             
             let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView,fullNameContainerView, usernameContainerView, registrationButton])
             stack.axis = .vertical
             stack.spacing = 20
             stack.distribution = .fillEqually
           
             view.addSubview(stack)
        stack.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
        view.addSubview(alreadyHaveAccountButton)
               alreadyHaveAccountButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 40,  paddingRight: 40)
    }
}
