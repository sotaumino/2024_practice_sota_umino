//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by 海野 颯汰   on 2024/08/11.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefault = UserDefaults.standard
        
        if let value = userDefault.string(forKey: "text")
        {
            textField.text = value
        }
    }

    @IBAction func tapActionButton(_ sender: Any) {
        let userDefault = UserDefaults.standard
        
        userDefault.set(textField.text, forKey: "text")
        
        userDefault.synchronize()
    }
    
}

