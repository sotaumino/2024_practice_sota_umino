//
//  ResultViewController.swift
//  Chapter4
//
//  Created by 海野 颯汰   on 2024/08/09.
//

import UIKit

class ResultViewController: UIViewController {

    var price: Int = 0
    
    let percentValue: Float = 0.1
    
    @IBOutlet weak var resultField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let waribikiPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(waribikiPrice)
        resultField.text = "\(percentOffPrice)"
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
