//
//  ViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/08.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNeedLogin()
    }

    private func setUpNeedLogin() {
        let landingVC = LandingViewController()
        landingVC.modalPresentationStyle = .fullScreen
        present(landingVC, animated: true)
    }
}

