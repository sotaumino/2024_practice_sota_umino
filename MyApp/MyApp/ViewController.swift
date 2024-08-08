//
//  ViewController.swift
//  MyApp
//
//  Created by 海野 颯汰   on 2024/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value: Int = 10 - 1
        label.text = "\(value)"
    }


}

