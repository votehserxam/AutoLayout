/*
 
 Copyright © 2022 Max Reshetov.
 All rights reserved.
 
*/

import UIKit

class Edges {
    
    var top: CGFloat = 0
    var left: CGFloat = 0
    var bottom: CGFloat = 0
    var right: CGFloat = 0
    var centerX: CGFloat = 0
    var centerY: CGFloat = 0
    
    init(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        self.top = top
        self.left = left
        self.bottom = -bottom
        self.right = -right
    }
    
    init(centerX: CGFloat = 0, centerY: CGFloat = 0) {
        self.centerX = centerX
        self.centerY = centerY
    }
    
}
