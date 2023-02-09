//
//  CustomImgView.swift
//  figmaclonestoryboard
//
//  Created by 시혁 on 2023/02/09.
//

import Foundation
import UIKit
@IBDesignable
class CustomImgView : UIImageView {
    @IBInspectable
    var cornerRadius: CGFloat = 8 {
        didSet{
           // self.clipsToBounds = true
            self.layer.cornerRadius = cornerRadius
        }
    }
}
