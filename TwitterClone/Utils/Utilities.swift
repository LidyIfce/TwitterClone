//
//  Utilities.swift
//  TwitterClone
//
//  Created by Lidiane Gomes Barbosa on 24/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit

class Utilities {
    
    static func inputContainerView(withImage image:UIImage, textField: UITextField) -> UIView{
           let view = UIView()
           view.heightAnchor.constraint(equalToConstant: 50).isActive = true
           
           let iv = UIImageView()
           iv.image = image
           
           view.addSubview(iv)
           iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingBottom: 8)
           iv.setDimensions(width: 24, height: 24)
        
            view.addSubview(textField)
            textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
        
            let dividerView = UIView()
            dividerView.backgroundColor = .white
            view.addSubview(dividerView)
            dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor,height: 0.75)
            
           return view
       }
    
    static func textField(withPlaceholder placeholder:String) -> UITextField{
        let tf = UITextField()
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor:UIColor.white])
        return tf
    }
    
    static func attributedButton(_ firstPart:String, _ secondPart:String) -> UIButton{
        let button = UIButton()
        
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
            NSAttributedString.Key.foregroundColor:UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
            NSAttributedString.Key.foregroundColor: UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }
       
}
