//
//  EmailLoginViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/21.
//

import UIKit

class EmailLoginViewController: UIViewController {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signUpBtn: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        setUpTextField()
        setUpSignUpBtnAction()
    }

    // MARK: - setUpUI
    private func setUpUI() {
        loginBtn.clipsToBounds = true
        loginBtn.layer.cornerRadius = 28
        signUpBtn.isUserInteractionEnabled = true
        emailTextField.layer.addBorder([.bottom], color: UIColor.gray_2!, width: 1.0)
        emailTextField.setClearButton(with: UIImage(named: "ClearBtn")!, mode: .whileEditing)
        passwordTextField.layer.addBorder([.bottom], color: UIColor.gray_2!, width: 1.0)
        passwordTextField.setClearButton(with: UIImage(named: "ClearBtn")!, mode: .whileEditing)
        passwordTextField.isSecureTextEntry = true
    }
    private func setUpTextField() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    // MARK: - actions
    private func setUpSignUpBtnAction() {
        let signUPBtnGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signUpBtnTapped))
        signUpBtn.addGestureRecognizer(signUPBtnGesture)
    }
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        print(emailTextField.text!, passwordTextField.text!)
    }
    // MARK: - action selector
    @objc func signUpBtnTapped() {
        guard let signUpPage = storyboard?.instantiateViewController(withIdentifier: "signUpPage") as? SignUpViewController else { return }
        self.navigationController?.pushViewController(signUpPage, animated: true)
        present(signUpPage, animated: true)
    }
    
}

// MARK: - textFieldDelegate
extension EmailLoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if emailTextField.text != "" {
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        }
        if passwordTextField.text != "" {
            emailTextField.resignFirstResponder()
            passwordTextField.resignFirstResponder()
        }
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
}
