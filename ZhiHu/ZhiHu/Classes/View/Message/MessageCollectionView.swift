//
//  MessageCollectionView.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/4/3.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class MessageCollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        backgroundColor = UIColor.clearColor()
        pagingEnabled = true
        showsHorizontalScrollIndicator = false
        registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
        // 设置代理
        dataSource = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
/// 数据源方法
extension MessageCollectionView: UICollectionViewDataSource{

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath)
        indexPath.row % 2 == 0 ? (cell.backgroundColor = UIColor.clearColor()): (cell.backgroundColor = UIColor.purpleColor())
        return cell
    }


}

