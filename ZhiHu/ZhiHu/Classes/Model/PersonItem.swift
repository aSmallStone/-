//
//  Person.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/4/1.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class PersonItem: NSObject {
    
    var icon: String?
    
    var title: String?
    
    init(dict: [String: AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    

}
