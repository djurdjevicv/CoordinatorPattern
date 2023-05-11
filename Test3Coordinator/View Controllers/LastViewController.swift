//
//  LastViewController.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import UIKit

class LastViewController: UIViewController {

    private let presenter: LastPresenter
    
    let buttonHome = UIButton()
    
    init(presenter: LastPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray
        title = "Last Screen"
        presenter.load()
        
        view.addSubview(buttonHome)
        
        buttonHome.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonHome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonHome.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        buttonHome.setButtonCustonDesign()
        buttonHome.addTarget(presenter, action: #selector(presenter.didPressHome), for: .touchUpInside)
    }
}

extension LastViewController: ButtonView {
    func setButtonText(_ text: String) {
        buttonHome.setTitle(text, for: .normal)
    }
}
