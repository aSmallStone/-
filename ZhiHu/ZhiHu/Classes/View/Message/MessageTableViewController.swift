//
//  MessageTableViewController.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/3/28.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.mainScreen().bounds.size.width
let screenHeight = UIScreen.mainScreen().bounds.size.height
class MessageTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "消息"
        
        addsubViews()
    }
    
}

extension MessageTableViewController{
    
    // 添加子视图
    private func addsubViews(){
        addHeadView()
        addBodyView()
    
    }
    
    // 添加头导航栏
    private func addHeadView(){
        
        let headView = UIView(frame: CGRect(x: 0, y: 44, width: screenWidth, height: 44))
        
        headView.backgroundColor = UIColor.grayColor()
        
        navigationController?.navigationBar.addSubview(headView)

    }
    // 添加滚动体
    private func addBodyView(){
        
        let flowLayout = MessageFlowLayout()
        
        let bodyView = MessageCollectionView(frame: CGRect(x: 0, y: 108, width: screenWidth, height: screenHeight - 108), collectionViewLayout: flowLayout)
        view.addSubview(bodyView)

    }



}