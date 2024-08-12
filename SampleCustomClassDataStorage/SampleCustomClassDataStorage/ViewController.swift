//
//  ViewController.swift
//  SampleCustomClassDataStorage
//
//  Created by 海野 颯汰   on 2024/08/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        
        let data = MyData()
        data.valueString = "test"
        
        do
        {
            let archiveData = try NSKeyedArchiver.archivedData(withRootObject: data, requiringSecureCoding: true)
            
            userDefaults.set(archiveData, forKey: "data")
            userDefaults.synchronize()
            
            if let storeData = userDefaults.object(forKey: "data") as? Data
            {
                if let unarchiveData = try NSKeyedUnarchiver.unarchivedObject(ofClass: MyData.self, from: storeData)
                {
                    if let valueString = unarchiveData.valueString
                    {
                        print("デシリアライズデータ" + valueString)
                    }
                }
            }

        }
        catch
        {
         print("\(error)")
        }

    }


}

