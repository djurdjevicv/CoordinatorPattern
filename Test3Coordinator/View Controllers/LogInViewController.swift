//
//  LogInViewController.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import UIKit

class LogInViewController: UIViewController {

    private let presenter: LogInPresenter
    
    let stackView = UIStackView()
    let buttonLogIn = UIButton()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let labelStackView = UIStackView()
    let label = UILabel()
    let labelButton = UILabel()

    init(presenter: LogInPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = "Log In"
        presenter.load()
        
        styleView(view)
    }
}

extension LogInViewController: FormView {
    func setLabelText(_ text: String) {
        label.text = "Don't have account:"
        labelButton.text = "SIGN UP"
    }
    
    func setPlaceholder(_ text: String) {
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
    }
    
    func setButtonText(_ text: String) {
        buttonLogIn.setTitle(text, for: .normal)
    }
    
    func styleView(_ view: UIView){
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(buttonLogIn)
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
        
        buttonLogIn.setButtonCustonDesign()
        buttonLogIn.addTarget(presenter, action: #selector(presenter.didPressLogIn), for: .touchUpInside)

        usernameTextField.setCustonDesign()

        passwordTextField.setCustonDesign()
        passwordTextField.isSecureTextEntry = true
        
        labelButton.textColor = .systemBlue
        labelButton.isUserInteractionEnabled = true
        labelButton.addGestureRecognizer(UITapGestureRecognizer(target: presenter, action: #selector(presenter.didPressSignUp)))
    }
}
