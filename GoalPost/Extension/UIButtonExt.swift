//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/26/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor()  {
        self.backgroundColor = #colorLiteral(red: 0.04947670282, green: 0.7378251904, blue: 0.1120948004, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
