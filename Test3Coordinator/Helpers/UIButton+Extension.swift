//
//  UIButton+Extension.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

extension UIButton {
    
    func setButtonCustonDesign(){
        backgroundColor = .systemBlue
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 8
        layer.borderWidth = 2
        layer.borderColor = .none
        heightAnchor.constraint(equalToConstant: 40).isActive = true
        widthAnchor.constraint(equalToConstant: 220).isActive = true
    }
    
}
