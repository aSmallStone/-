//
//  PersonGroup.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/4/1.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class PersonGroup: NSObject {
    
    var items: [PersonItem] = [PersonItem]()
    
     init(items: [PersonItem]) {
    
        super.init()
        
        self.items = items
    
    }
}
