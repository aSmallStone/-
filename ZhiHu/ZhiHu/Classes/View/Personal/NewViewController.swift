//
//  NewViewController.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/4/2.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    var headText: String
    
    init(title: String){
        self.headText = title
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = headText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.hidden = true
        
    }
    override func viewWillDisappear(animated: Bool) {
        
        super.viewWillDisappear(animated)

        tabBarController?.tabBar.hidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
