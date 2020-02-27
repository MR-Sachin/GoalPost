//
//  GoalCell.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/19/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit
import CoreData

class GoalCell: UITableViewCell {

    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressLbl)
        
        let goal = Goal()
        goal.goalProgress = Int32(exactly: 12.5)!
    }
}
