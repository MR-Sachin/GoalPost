//
//  GoalVC.swift
//  GoalPost
//
//  Created by vishal chaubey on 2/19/20.
//  Copyright © 2020 DeviSons. All rights reserved.
//

import UIKit

class GoalVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {
            return
        }
        presentDetail(createGoalVC)
    }
  
    
}
extension GoalVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell() }
        cell.configureCell(description: "project completied in these days", type: .longTerm, goalProgressAmount: 2)
        return cell
    }
    
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
    
        
        
    
}



