//
//  UIViewControllerExt.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/20/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController)  {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail()  {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type  = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
