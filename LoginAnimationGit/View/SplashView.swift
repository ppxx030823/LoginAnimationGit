//
//  LoginView.swift
//  LoginAnimationGit
//
//  Created by ppx on 2025/2/17.
//

import UIKit

class SplashViewController: UIViewController {
    private let viewModel = SplashViewModel()
    static let buttonCornerRadius: CGFloat = 5
    private let signupButton: UIButton = {
        let signupButton = UIButton()
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.backgroundColor = .blue
//        signupButton.layer.borderWidth = 5
        signupButton.layer.cornerRadius = buttonCornerRadius
        return signupButton
    }()

    private let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = buttonCornerRadius
        return loginButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(signupButton)
        view.addSubview(loginButton)
    }

    private func setupConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            signupButton.widthAnchor.constraint(equalToConstant: 200),
            signupButton.heightAnchor.constraint(equalToConstant: 50),

            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }

    @objc private func signupButtonTapped() {
        // 处理注册按钮点击事件，例如跳转到注册页面
        print("Sign Up button tapped")
    }

    @objc private func loginButtonTapped() {
        // 处理登录按钮点击事件，跳转到登录页面
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
}
