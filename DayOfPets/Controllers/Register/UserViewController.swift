//
//  UserViewController.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/22.
//

import UIKit

class UserViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - setUp
    private func setUpNavigation() {
        print("loading!")
    }
    

    @IBAction func skipBtnTapped(_ sender: UIBarButtonItem) {
        guard let petRegisterPage = storyboard?.instantiateViewController(withIdentifier: "petRegisterPage") as? PetViewController else {return}
        present(petRegisterPage, animated: true)
    }
    
}
