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

        if let amountString = amount.text, let vendorName = vendor.text{
            let amountInt = Double(amountString)
            allReceipts[vendorName] = amountInt
            print(allReceipts)
            let money = totalFunc()
            let alertController = UIAlertController(title:"You've spent $\(money) today!", message:"Happy spending", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func totalFunc()->Double{
        var total = 0.0
        for (key,value) in allReceipts{
            total += value
        }
        return total
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
