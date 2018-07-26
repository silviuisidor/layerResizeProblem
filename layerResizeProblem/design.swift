//
//  design.swift
//  layerResizeProblem
//
//  Created by Silviu on 26/07/2018.
//  Copyright © 2018 Silviu. All rights reserved.
//

import UIKit

extension UITextField {
    func gradientBackground(firstColor: UIColor, secondColor: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x:0.0, y:0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        layer.addSublayer(gradientLayer)
    }
}

class gradientToTextField: UITextField {
    var once = true
    override func layoutSubviews() {
        super.layoutSubviews()
        if once {
            self.gradientBackground(firstColor: UIColor(red: 0.30, green: 0.55, blue: 1.00, alpha: 1), secondColor: UIColor(red: 0.00, green: 0.36, blue: 1.00, alpha: 1))
            once = false
        }
    }
}


