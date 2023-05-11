//
//  UITextField+Extension.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

extension UITextField {
    
    
    func setCustonDesign(){
        
        borderStyle = .none
        layer.cornerRadius = 8
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        textColor = .label
        font = UIFont.systemFont(ofSize: 18)
        autocapitalizationType = .none
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 40).isActive = true
        widthAnchor.constraint(equalToConstant: 220).isActive = true
        attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightText])

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
        
        
    }
    

    
}
