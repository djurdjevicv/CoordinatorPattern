//
//  ViewController.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let presenter: WelcomePresenter
    
    let buttonLogIn = UIButton()
    let buttonSignUp = UIButton()
    let stackView = UIStackView()

    init(presenter: WelcomePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = "Home"
        presenter.load()
        
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(buttonLogIn)
        stackView.addArrangedSubview(buttonSignUp)
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20.0
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        buttonLogIn.setButtonCustonDesign()
        buttonLogIn.addTarget(presenter, action: #selector(presenter.didPressLogIn), for: .touchUpInside)
        
        buttonSignUp.setButtonCustonDesign()
        buttonSignUp.addTarget(presenter, action: #selector(presenter.didPressSignUp), for: .touchUpInside)

    }

}

extension WelcomeViewController: ButtonView {
    func setButtonText(_ text: String) {
        buttonLogIn.setTitle("Log In", for: .normal)
        buttonSignUp.setTitle("Sign Up", for: .normal)
    }
    
}



