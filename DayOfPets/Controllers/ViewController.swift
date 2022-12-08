//
//  ViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailLoginBtn: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    private func setUpUI() {
        emailLoginBtn.clipsToBounds = true
        emailLoginBtn.layer.cornerRadius = 44
        emailLoginBtn.layer.borderWidth = 1
        emailLoginBtn.layer.borderColor = UIColor.gray.cgColor
    }

}

