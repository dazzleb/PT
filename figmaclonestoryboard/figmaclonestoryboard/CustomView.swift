//
//  CustomView.swift
//  figmaclonestoryboard
//
//  Created by 시혁 on 2023/02/09.
//

import Foundation
import UIKit
@IBDesignable
final class CustomView : UIView {
    @IBInspectable
    var cornerRadius: CGFloat = 14 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
}
