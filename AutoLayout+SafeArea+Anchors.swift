/*
 
 Copyright © 2022 Max Reshetov.
 All rights reserved.
 
*/

import UIKit

extension UIView {
    /// The layout guide considering safe areas of the screen.
    var safeArea: UILayoutGuide { return safeAreaLayoutGuide }
}


extension UILayoutGuide {
    
    /// A layout anchor of top view’s edge.
    var top: YAnchor { return (anchor: topAnchor, constant: 0) }
    
    /// A layout anchor of top view’s edge with offset.
    func top(_ constant: CGFloat) -> YAnchor { return (anchor: topAnchor, constant: constant) }
    
    /// A layout anchor of left view’s edge.
    var left: XAnchor { return (anchor: leadingAnchor, constant: 0) }
    
    /// A layout anchor of left view’s edge with offset.
    func left(_ constant: CGFloat) -> XAnchor { return (anchor: leadingAnchor, constant: constant) }
    
    /// A layout anchor of bottom view’s edge.
    var bottom: YAnchor { return (anchor: bottomAnchor, constant: 0) }
    
    /// A layout anchor of bottom view’s edge with offset.
    func bottom(_ constant: CGFloat) -> YAnchor { return (anchor: bottomAnchor, constant: constant) }
    
    /// A layout anchor of right view’s edge.
    var right: XAnchor { return (anchor: trailingAnchor, constant: 0) }
    
    /// A layout anchor of right view’s edge with offset.
    func right(_ constant: CGFloat) -> XAnchor { return (anchor: trailingAnchor, constant: constant) }
    
}
