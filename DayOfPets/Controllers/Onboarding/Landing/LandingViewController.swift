//
//  LandingViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/27.
//

import UIKit

class LandingViewController: UIViewController {
    
    // MARK: - components
    private lazy var titleLabel = LandingViewComponents.titleLabel
    private lazy var invitationBtn = LandingViewComponents.invitationBtn
    private lazy var kakaoLoginImage = LandingViewComponents.kakaoLoginImage
    private lazy var kakaoLoginLabel = LandingViewComponents.kakaoLoginLabel
    private lazy var kakaoLoginBtn = LandingViewComponents.kakaoLoginBtn
    private lazy var emailLoginImage = LandingViewComponents.emailLoginImage
    private lazy var emailLoginLabel = LandingViewComponents.emailLoginLabel
    private lazy var emailLoginBtn = LandingViewComponents.emailLoginBtn
    private lazy var loginUtils = LandingViewComponents.loginUtils

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setUpLayout()
        setUpKakaoBtn()
        setUpEmailBtn()
    }
    
    // MARK: - setUpUI
    private func setUpLayout() {
        view.addSubview(titleLabel)
        view.addSubview(invitationBtn)
        view.addSubview(kakaoLoginBtn)
        view.addSubview(emailLoginBtn)
        view.addSubview(loginUtils)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        invitationBtn.translatesAutoresizingMaskIntoConstraints = false
        kakaoLoginBtn.translatesAutoresizingMaskIntoConstraints = false
        emailLoginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginUtils.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 102),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
            invitationBtn.heightAnchor.constraint(equalToConstant: 56),
            invitationBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -45),
            invitationBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19),
            invitationBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -19),
            
            kakaoLoginBtn.heightAnchor.constraint(equalToConstant: 56),
            emailLoginBtn.heightAnchor.constraint(equalToConstant: 56),
            loginUtils.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginUtils.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19),
            loginUtils.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -19)
        ])
    }
    private func setUpKakaoBtn() {
        view.addSubview(kakaoLoginImage)
        view.addSubview(kakaoLoginLabel)
        
        kakaoLoginImage.translatesAutoresizingMaskIntoConstraints = false
        kakaoLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            kakaoLoginImage.widthAnchor.constraint(equalToConstant: 25),
            kakaoLoginImage.heightAnchor.constraint(equalToConstant: 23),
            kakaoLoginImage.topAnchor.constraint(equalTo: kakaoLoginBtn.topAnchor, constant: 18),
            kakaoLoginImage.leadingAnchor.constraint(equalTo: kakaoLoginBtn.leadingAnchor, constant: 37),

            kakaoLoginLabel.topAnchor.constraint(equalTo: kakaoLoginBtn.topAnchor),
            kakaoLoginLabel.centerXAnchor.constraint(equalTo: kakaoLoginBtn.centerXAnchor),
            kakaoLoginLabel.centerYAnchor.constraint(equalTo: kakaoLoginBtn.centerYAnchor)
        ])
    }
    
    private func setUpEmailBtn() {
        view.addSubview(emailLoginImage)
        view.addSubview(emailLoginLabel)
        
        emailLoginImage.translatesAutoresizingMaskIntoConstraints = false
        emailLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLoginImage.widthAnchor.constraint(equalToConstant: 27),
            emailLoginImage.heightAnchor.constraint(equalToConstant: 18),
            emailLoginImage.topAnchor.constraint(equalTo: emailLoginBtn.topAnchor, constant: 18),
            emailLoginImage.leadingAnchor.constraint(equalTo: emailLoginBtn.leadingAnchor, constant: 37),

            emailLoginLabel.topAnchor.constraint(equalTo: emailLoginBtn.topAnchor),
            emailLoginLabel.centerXAnchor.constraint(equalTo: emailLoginBtn.centerXAnchor),
            emailLoginLabel.centerYAnchor.constraint(equalTo: emailLoginBtn.centerYAnchor)
        ])
    }
}
