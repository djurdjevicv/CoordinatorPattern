//
//  SignUpViewController.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import UIKit

class SignUpViewController: UIViewController {

    private let presenter: SignUpPresenter
    
    let stackView = UIStackView()
    let buttonSignUp = UIButton()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let emailTextField = UITextField()
    
    let labelStackView = UIStackView()
    let label = UILabel()
    let labelButton = UILabel()
    
    init(presenter: SignUpPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = "Sign Up"
        
        presenter.load()
        
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(buttonSignUp)
        stackView.addArrangedSubview(labelStackView)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20.0
        
        labelStackView.axis = .horizontal
        labelStackView.alignment = .center
        labelStackView.spacing = 10.0
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        labelStackView.addArrangedSubview(label)
        labelStackView.addArrangedSubview(labelButton)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        buttonSignUp.setButtonCustonDesign()
        buttonSignUp.addTarget(presenter, action: #selector(presenter.didPressSignUp), for: .touchUpInside)

        usernameTextField.setCustonDesign()
        emailTextField.setCustonDesign()

        passwordTextField.setCustonDesign()
        passwordTextField.isSecureTextEntry = true
        
        labelButton.textColor = .systemBlue
        labelButton.isUserInteractionEnabled = true
        labelButton.addGestureRecognizer(UITapGestureRecognizer(target: presenter, action: #selector(presenter.didPressLogIn)))
    }
}

extension SignUpViewController: FormView {
    func styleView(_ view: UIView) {
        
    }
    
    func setLabelText(_ text: String) {
        label.text = "Already have account:"
        labelButton.text = "LOG IN"
    }
    
    func setPlaceholder(_ text: String) {
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
        emailTextField.placeholder = "Email"
    }
    
    func setButtonText(_ text: String) {
        buttonSignUp.setTitle(text, for: .normal)
    }
}
