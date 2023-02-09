//
//  customLabel.swift
//  figmaclonestoryboard
//
//  Created by 시혁 on 2023/02/09.
//

import Foundation
import UIKit
@IBDesignable
final class CustomLabel : UILabel {
    @IBInspectable
    
    var cornerRadius: CGFloat = 3 {
        didSet{
            self.clipsToBounds = true
            self.layer.cornerRadius = cornerRadius
        }
    }
}
