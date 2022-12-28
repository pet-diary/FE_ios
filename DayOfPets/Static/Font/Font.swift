//
//  Font.swift
//  DayOfPets
//
//  Created by Nayeong Kim on 2022/12/27.
//

import UIKit

extension UIFont {
    enum Family: String {
        case Black, Bold, ExtraBold, ExtraLight, Light, Medium, Regular, SemiBold, Thin
    }
    
    class func getFont(family: Family, size: CGFloat) -> UIFont {
        return UIFont(name: "Pretendard-\(family)", size: size)!
    }
}
