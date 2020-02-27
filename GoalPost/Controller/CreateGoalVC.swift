//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/20/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
        
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your Goal?" {
        guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinalGoalVC else { return }
        
        finishGoalVC.initData(description: goalTextView.text!, type: goalType)
        presentDetail(finishGoalVC)
        
        }
    }
    @IBAction func backBtnPressed(_ sender: Any) {
      dismissDetail()
        
    }
    

}
