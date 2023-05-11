//
//  LogInView.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

protocol FormView:AnyObject {
    func setPlaceholder(_ text: String)
    func setLabelText(_ text: String)
    func setButtonText(_ text: String)
    func styleView(_ view: UIView)
}
