//
//  AppDelegate.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/3/28.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // 实例化 window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}