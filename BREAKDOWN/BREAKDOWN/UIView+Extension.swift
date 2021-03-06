//
//  UIView+Extension.swift
//  BREAKDOWN
//
//  Created by kristy awesome pants martinez on 9/5/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func setGradientBackground(colorOne:UIColor, colorTwo: UIColor) {
       let gradientLayer = CAGradientLayer()
       gradientLayer.frame = bounds
       gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
       gradientLayer.locations = [0.0,1.0]
       gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
       gradientLayer.endPoint = CGPoint(x: 0.0, y:0.0)
       
       layer.insertSublayer(gradientLayer, at: 0)
        
        
   }
}
