//
//  SignUpViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordCfmTextField: UITextField!
    
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    @IBOutlet weak var passwordCfmErrorLabel: UILabel!
    
    @IBOutlet weak var nextPageBtn: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        setUpTextField()
        setUpNextBtnAction()
    }
    
    // MARK: - setUpUI
    private func setUpUI() {
        emailTextField.layer.addBorder([.bottom], color: UIColor.gray_2!, width: 1.0)
        emailTextField.setClearButton(with: UIImage(named: "ClearBtn")!, mode: .whileEditing)
        passwordTextField.layer.addBorder([.bottom], color: UIColor.gray_2!, width: 1.0)
        passwordTextField.setClearButton(with: UIImage(named: "ClearBtn")!, mode: .whileEditing)
        passwordTextField.isSecureTextEntry = true
        passwordCfmTextField.layer.addBorder([.bottom], color: UIColor.gray_2!, width: 1.0)
        passwordCfmTextField.setClearButton(with: UIImage(named: "ClearBtn")!, mode: .whileEditing)
        passwordCfmTextField.isSecureTextEntry = true
        emailErrorLabel.isHidden = true
        passwordErrorLabel.isHidden = true
        passwordCfmErrorLabel.isHidden = true
    }
    private func setUpTextField() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        passwordCfmTextField.delegate = self
    }
    // MARK: - validation
    private func validEmail(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    private func validPassword(password:String) -> Bool {
        let passwordreg =  ("(?=.*[A-Za-z])(?=.*[0-9]).{8,20}")
        let passwordtesting = NSPredicate(format: "SELF MATCHES %@", passwordreg)
        return passwordtesting.evaluate(with: password)
    }
    private  func validPasswordCfm(password:String, cfm:String) -> Bool {
        return password == cfm
    }
    // MARK: - actions
    private func setUpNextBtnAction() {
        let nextPageBtnGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(nextBtnTapped))
        nextPageBtn.addGestureRecognizer(nextPageBtnGesture)
    }
    // MARK: - action selector
    @objc func nextBtnTapped() {
        // reference 하고 있는 storyboard를 설정해서 해당 storyboard의 controller로 넘김
        let register = UIStoryboard.init(name: "Register", bundle: nil)
        guard let userRegisterPage = register.instantiateViewController(withIdentifier: "userRegisterPage") as? UserViewController else {return}
        present(userRegisterPage, animated: true)
    }
}

// MARK: - textFieldDelegate
extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if emailTextField.text != "" {
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        }
        if passwordTextField.text != "" {
            emailTextField.resignFirstResponder()
            passwordCfmTextField.becomeFirstResponder()
        }
        if passwordCfmTextField.text != "" {
            passwordTextField.resignFirstResponder()
            passwordCfmTextField.resignFirstResponder()
        }
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        passwordCfmTextField.resignFirstResponder()
    }
}
