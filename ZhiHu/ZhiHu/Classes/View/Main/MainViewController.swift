//
//  MainViewController.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/3/28.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        addChildViewControllers()
    }
}

// MARK: - 设置界面
extension MainViewController{
    
    /// 添加所有控制器
    private func addChildViewControllers(){
        
        addChildViewController(HomeTableViewController(), imageName: "Feed_Normal")
        addChildViewController(DiscoverTableViewController(), imageName: "Find_Normal")
        addChildViewController(MessageTableViewController(), imageName: "Notice_Normal")
        addChildViewController(PersonalTableViewController(style: UITableViewStyle.Grouped), imageName: "People_Normal")
    }

    /// 添加控制器
    private func addChildViewController(vc: UIViewController, imageName: String) {
        
        // 设置 TabBar属性
        tabBar.tintColor = UIColor.blueColor()
        tabBar.backgroundColor = UIColor.whiteColor()
        tabBar.alpha = 0.6
        
        // 设置图像
        vc.tabBarItem.image = UIImage(named: imageName)//?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        // 导航控制器
        let nav = UINavigationController(rootViewController: vc)
        
        // 图像居中显示
        nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        
        
        addChildViewController(nav)
   
    }

}
