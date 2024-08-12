//
//  MyData.swift
//  SampleCustomClassDataStorage
//
//  Created by 海野 颯汰   on 2024/08/11.
//

import Foundation

class MyData: NSObject, NSSecureCoding
{
    static var supportsSecureCoding: Bool
    {
            return true
    }
    
    var valueString: String?

    override init()
    {
        
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(valueString, forKey: "valueString")
    }
    
    required init?(coder decoder: NSCoder) {
        valueString = decoder.decodeObject(forKey: "valueString") as? String
    }
    
}
