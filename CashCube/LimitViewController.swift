//
//  LimitViewController.swift
//  CashCube
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class LimitViewController: UIViewController {

    @IBOutlet weak var setBudget: UITextField!
    @IBAction func letsGo2(_ sender: UIButton) {
        
        if let budgetString = setBudget.text{
            let budgetInt = Double(budgetString)
            print(budgetInt!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
