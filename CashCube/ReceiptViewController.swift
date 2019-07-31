//
//  ReceiptViewController.swift
//  CashCube
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var vendor: UITextField!
    
    var allReceipts : [String : Double] = [:]
    
    @IBAction func letsGo1(_ sender: UIButton) {
       // if let vendorName = vendor.text {
         //   label.text = vendorName
       // }
        if let amountString = amount.text, let vendorName = vendor.text{
            let amountInt = Double(amountString)
            allReceipts[vendorName] = amountInt
            print(allReceipts)
        }
        }
            //= Double(amount.text!)
    
    
    
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
