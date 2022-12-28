//
//  ViewComponents.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/27.
//

import UIKit

class LandingViewComponents {
    static var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "우리 반려동물을 위한\n기록습관\n펫다이어리에\n오신것을 환영해요 🐶🐱"
        label.font = UIFont.getFont(family: .SemiBold, size: 28)
        label.textColor = UIColor.gray_8
        label.numberOfLines = 4
        return label
    }()
    
    static var invitationBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("초대코드 입력하기", for: .normal)
        btn.titleLabel?.font = UIFont.getFont(family: .SemiBold, size: 16)
        btn.titleLabel?.textColor = .white
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 28
        btn.backgroundColor = UIColor.mainColor
        return btn
    }()
    
    static var kakaoLoginImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Kakao")
        return image
    }()
    
    static var kakaoLoginLabel: UILabel = {
        let label = UILabel()
        label.text = "카카오로 시작하기"
        label.font = UIFont.getFont(family: .SemiBold, size: 16)
        label.textColor = UIColor.kakaoLabel
        return label
    }()
    
    static var kakaoLoginBtn: UIStackView = {
        let st = UIStackView(arrangedSubviews: [kakaoLoginImage, kakaoLoginLabel])
        st.spacing = 30
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        st.backgroundColor = UIColor.kakaoMain
        st.clipsToBounds = true
        st.layer.cornerRadius = 28
        return st
    }()
    
    static var emailLoginImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Email")
        return image
    }()
    
    static var emailLoginLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일로 로그인하기"
        label.font = UIFont.getFont(family: .SemiBold, size: 16)
        label.textColor = UIColor.gray_8
        return label
    }()
    
    static var emailLoginBtn: UIStackView = {
        let st = UIStackView(arrangedSubviews: [emailLoginImage, emailLoginLabel])
        st.spacing = 30
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        st.clipsToBounds = true
        st.layer.cornerRadius = 28
        st.layer.borderWidth = 1
        st.layer.borderColor = UIColor.mainColor?.cgColor
        return st
    }()
    
    static var loginUtils: UIStackView = {
        let st = UIStackView(arrangedSubviews: [kakaoLoginBtn, emailLoginBtn])
        st.spacing = 16
        st.axis = .vertical
        st.distribution = .fill
        st.alignment = .fill
        return st
    }()
}
