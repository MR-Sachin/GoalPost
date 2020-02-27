//
//  FinalGoalVC.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/26/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit

class FinalGoalVC: UIViewController {
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGoalBtn.bindToKeyboard()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
    }
    
    

}
