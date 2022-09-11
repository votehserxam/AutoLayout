/*
 
 Copyright © 2022 Max Reshetov.
 All rights reserved.
 
*/

import UIKit

extension UIView {
    
    /// Configuring needed view's constraints.
    func constraints(
        top: YAnchor? = nil,
        left: XAnchor? = nil,
        bottom: YAnchor? = nil,
        right: XAnchor? = nil,
        centerX: XAnchor? = nil,
        centerY: YAnchor? = nil,
        firstBaseline: YAnchor? = nil,
        lastBaseline: YAnchor? = nil,
        width: DimensionAnchor? = nil,
        height: DimensionAnchor? = nil
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        if let top = top { constraints.append(getTopAnchor(from: top)) }
        if let left = left { constraints.append(getLeftAnchor(from: left)) }
        if let bottom = bottom { constraints.append(getBottomAnchor(from: bottom)) }
        if let right = right { constraints.append(getRightAnchor(from: right)) }
        if let centerX = centerX { constraints.append(getCenterXAnchor(from: centerX)) }
        if let centerY = centerY { constraints.append(getCenterYAnchor(from: centerY)) }
        if let firstBaseline = firstBaseline { constraints.append(getFirstBaselineAnchor(from: firstBaseline)) }
        if let lastBaseline = lastBaseline { constraints.append(getLastBaselineAnchor(from: lastBaseline)) }
        if let width = width { constraints.append(getWidthAnchor(from: width)) }
        if let height = height { constraints.append(getHeightAnchor(from: height)) }
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func getTopAnchor(from top: YAnchor) -> NSLayoutConstraint {
        return topAnchor.constraint(equalTo: top.anchor, constant: top.constant)
    }
    
    private func getLeftAnchor(from left: XAnchor) -> NSLayoutConstraint {
        return leadingAnchor.constraint(equalTo: left.anchor, constant: left.constant)
    }
    
    private func getBottomAnchor(from bottom: YAnchor) -> NSLayoutConstraint {
        return bottomAnchor.constraint(equalTo: bottom.anchor, constant: -bottom.constant)
    }
    
    private func getRightAnchor(from right: XAnchor) -> NSLayoutConstraint {
        return trailingAnchor.constraint(equalTo: right.anchor, constant: -right.constant)
    }
    
    private func getCenterXAnchor(from centerX: XAnchor) -> NSLayoutConstraint {
        return centerXAnchor.constraint(equalTo: centerX.anchor, constant: centerX.constant)
    }
    
    private func getCenterYAnchor(from centerY: YAnchor) -> NSLayoutConstraint {
        return centerYAnchor.constraint(equalTo: centerY.anchor, constant: centerY.constant)
    }
    
    private func getFirstBaselineAnchor(from firstBaseline: YAnchor) -> NSLayoutConstraint {
        return firstBaselineAnchor.constraint(equalTo: firstBaseline.anchor, constant: firstBaseline.constant)
    }
    
    private func getLastBaselineAnchor(from lastBaseline: YAnchor) -> NSLayoutConstraint {
        return lastBaselineAnchor.constraint(equalTo: lastBaseline.anchor, constant: lastBaseline.constant)
    }
    
    private func getWidthAnchor(from width: DimensionAnchor) -> NSLayoutConstraint {
        switch width {
        case .equalToConstant(let constant):
            return widthAnchor.constraint(equalToConstant: constant)
            
        case .equalTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return widthAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
            
        case .greaterThanOrEqualToConstant(let constant):
            return widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
            
        case .greaterThanOrEqualTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return widthAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
            
        case .lessThanOrEqualToConstant(let constant):
            return widthAnchor.constraint(lessThanOrEqualToConstant: constant)
            
        case .lessThanOrEqualTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return widthAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        }
    }
    
    private func getHeightAnchor(from height: DimensionAnchor) -> NSLayoutConstraint {
        switch height {
        case .equalToConstant(let constant):
            return heightAnchor.constraint(equalToConstant: constant)
            
        case .equalTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return heightAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
            
        case .greaterThanOrEqualToConstant(let constant):
            return heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
            
        case .greaterThanOrEqualTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
            
        case .lessThanOrEqualToConstant(let constant):
            return heightAnchor.constraint(lessThanOrEqualToConstant: constant)
            
        case .lessThanOrEqualTo(_: let anchor, multiplier: let multiplier, constant: let constant):
            return heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        }
    }
    
    /// Matching one view with another considering edges offset.
    func match(
        view: UIView,
        offset: Edges = Edges()
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor, constant: offset.top),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: offset.left),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: offset.bottom),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: offset.right)
        ])
    }
    
    /// Matching view with its superview considering edges offset.
    func matchSuperview(
        offset: Edges = Edges()
    ) {
        guard let view = superview else {return}
        match(view: view, offset: offset)
    }
    
    /// Center one view in another considering size and center offset.
    func center(
        in view: UIView,
        width: DimensionAnchor,
        height: DimensionAnchor,
        xOffset: CGFloat = 0,
        yOffset: CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: xOffset),
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yOffset),
            getWidthAnchor(from: width),
            getHeightAnchor(from: height)
        ])
    }
    
    /// Center one view in its superview considering size and center offset.
    func centerInSuperview(
        width: DimensionAnchor? = nil,
        height: DimensionAnchor? = nil,
        xOffset: CGFloat = 0,
        yOffset: CGFloat = 0
    ) {
        guard let view = superview else {return}
        translatesAutoresizingMaskIntoConstraints = false
        var actualWidth: NSLayoutConstraint!
        var actualHeight: NSLayoutConstraint!
        
        if let width = width {
            actualWidth = getWidthAnchor(from: width)
        } else {
            actualWidth = widthAnchor.constraint(equalTo: view.widthAnchor)
        }
        if let height = height {
            actualHeight = getHeightAnchor(from: height)
        } else {
            actualHeight = heightAnchor.constraint(equalTo: view.heightAnchor)
        }
        
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: xOffset),
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yOffset),
            actualWidth,
            actualHeight
        ])
    }
    
}
