/*
 
 Copyright © 2022 Max Reshetov.
 All rights reserved.
 
*/

import UIKit

enum DimensionAnchor {
    
    case equalToConstant(CGFloat)
    case equalTo(_ anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0)
    case greaterThanOrEqualToConstant(CGFloat)
    case greaterThanOrEqualTo(_ anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0)
    case lessThanOrEqualToConstant(CGFloat)
    case lessThanOrEqualTo(_ anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0)
    
}
