//
//  ViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/08.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var kakaoLoginBtn: UIView!
    @IBOutlet weak var emailLoginBtn: UIView!
    @IBOutlet weak var signUpBtn: UILabel!
    @IBOutlet weak var invitationCodeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        setUpEmailBtnAction()
        setUpSignUpBtnAction()
    }
    
    // MARK: - setUpUI
    private func setUpUI() {
        let radius = 28
        let borderWidth = 1
        
        kakaoLoginBtn.clipsToBounds = true
        kakaoLoginBtn.layer.cornerRadius = CGFloat(radius)
        invitationCodeBtn.clipsToBounds = true
        invitationCodeBtn.layer.cornerRadius = CGFloat(radius)
        signUpBtn.isUserInteractionEnabled = true
        emailLoginBtn.clipsToBounds = true
        emailLoginBtn.layer.cornerRadius = CGFloat(radius)
        emailLoginBtn.layer.borderWidth = CGFloat(borderWidth)
        emailLoginBtn.layer.borderColor = UIColor.mainColor?.cgColor
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - actions
    private func setUpEmailBtnAction() {
        let emailLoginBtnGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(emailLoginBtnTapped))
        emailLoginBtn.addGestureRecognizer(emailLoginBtnGesture)
    }
    private func setUpSignUpBtnAction() {
        let signUPBtnGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signUpBtnTapped))
        signUpBtn.addGestureRecognizer(signUPBtnGesture)
    }
    // MARK: - action selectors
    @objc func emailLoginBtnTapped() {
        guard let emailLoginPage = storyboard?.instantiateViewController(withIdentifier: "emailLoginPage") as? EmailLoginViewController else { return }
        self.navigationController?.pushViewController(emailLoginPage, animated: true)
    }
    @objc func signUpBtnTapped() {
        guard let signUpPage = storyboard?.instantiateViewController(withIdentifier: "signUpPage") as? SignUpViewController else { return }
        self.navigationController?.pushViewController(signUpPage, animated: true)
    }

}

