/*
 
 Copyright © 2022 Max Reshetov.
 All rights reserved.
 
*/

import UIKit

/// Horizontal layout anchor of the view with offset.
typealias XAnchor = (anchor: NSLayoutXAxisAnchor, constant: CGFloat)

/// Vertical layout anchor of the view with offset.
typealias YAnchor = (anchor: NSLayoutYAxisAnchor, constant: CGFloat)


extension UIView {
    
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
    
    /// A layout anchor of view’s horizontal center.
    var centerX: XAnchor { return (anchor: centerXAnchor, constant: 0) }
    
    /// A layout anchor of view’s horizontal center with offset.
    func centerX(_ constant: CGFloat) -> XAnchor { return (anchor: centerXAnchor, constant: constant) }
    
    /// A layout anchor of view’s vertical center.
    var centerY: YAnchor { return (anchor: centerYAnchor, constant: 0) }
    
    /// A layout anchor of view’s vertical center with offset.
    func centerY(_ constant: CGFloat) -> YAnchor { return (anchor: centerYAnchor, constant: constant) }
    
    /// A layout anchor of the top line of text in the view.
    var firstBaseline: YAnchor { return (anchor: firstBaselineAnchor, constant: 0) }
    
    /// A layout anchor of the top line of text in the view with offset.
    func firstBaseline(_ constant: CGFloat) -> YAnchor { return (anchor: firstBaselineAnchor, constant: constant) }
    
    /// A layout anchor of the bottom line of text in the view.
    var lastBaseline: YAnchor { return (anchor: firstBaselineAnchor, constant: 0) }
    
    /// A layout anchor of the bottom line of text in the view with offset.
    func lastBaseline(_ constant: CGFloat) -> YAnchor { return (anchor: lastBaselineAnchor, constant: constant) }
    
    /// A layout anchor of the view's width.
    var width: NSLayoutDimension { return widthAnchor }
    
    /// A layout anchor of the view's height.
    var height: NSLayoutDimension { return heightAnchor }
    
}
