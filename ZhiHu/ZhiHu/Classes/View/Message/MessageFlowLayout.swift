//
//  MessageFlowLayout.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/4/3.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class MessageFlowLayout: UICollectionViewFlowLayout {

    override init() {
        super.init()
        // 设置滚动方向
        scrollDirection = UICollectionViewScrollDirection.Horizontal

        
        itemSize = CGSize(width: screenWidth, height: screenHeight - 88)
        minimumLineSpacing = 0
        minimumInteritemSpacing = 0
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
