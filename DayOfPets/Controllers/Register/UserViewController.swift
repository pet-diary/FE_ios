//
//  UserViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/22.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet weak var backBtn: UIImageView!
    @IBOutlet weak var addFamilyBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // MARK: - setUp
    private func setUpUI() {
        addFamilyBtn.layer.cornerRadius = 28
        addFamilyBtn.layer.borderWidth = 1
        addFamilyBtn.layer.borderColor = UIColor.gray_2?.cgColor
    }
    
    // MARK: - actions
    private func setUpBackBtnAction() {
        let backBtnGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(backBtnTapped))
        backBtn.addGestureRecognizer(backBtnGesture)
    }
    @IBAction func skipBtnTapped(_ sender: UIButton) {
        guard let petRegisterPage = storyboard?.instantiateViewController(withIdentifier: "petRegisterPage") as? PetViewController else {return}
        present(petRegisterPage, animated: true)
    }
    
    // MARK: - action selectors
    @objc func backBtnTapped() {
        let main = UIStoryboard.init(name: "main", bundle: nil)
        guard let mainPage = main.instantiateViewController(withIdentifier: "mainPage") as? ViewController else {return}
        present(mainPage, animated: true)
    }
    
}
