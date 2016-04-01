//
//  PersonalTableViewController.swift
//  ZhiHu
//
//  Created by 王磊磊 on 16/3/28.
//  Copyright © 2016年 com.163. All rights reserved.
//

import UIKit

let rowHeight: CGFloat = 44;

class PersonalTableViewController: UITableViewController {

    // 懒加载数据模型
    private lazy var person: [PersonGroup] = {
        
        // 第一组
        let item1 = PersonItem(dict: ["icon": "1", "title": "U name"])
        let group1 = PersonGroup(items: [item1])
        
        // 第二组2
        let item2 = PersonItem(dict: ["icon": "2", "title": "我的关注"])
        let item3 = PersonItem(dict: ["icon": "3", "title": "我的收藏"])
        let item4 = PersonItem(dict: ["icon": "4", "title": "我的草稿"])
        let group2 = PersonGroup(items: [item2, item3, item4])
        
        // 第三组
        let item5 = PersonItem(dict: ["icon": "5", "title": "反馈帮助中心"])
        let item6 = PersonItem(dict: ["icon": "6", "title": "夜间模式"])
        let item7 = PersonItem(dict: ["icon": "7", "title": "设置"])
        let group3 = PersonGroup(items: [item5, item6, item7])
    
        return [group1, group2,group3]
    
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 注册可重用 cell
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // 设置距离
        tableView.tableHeaderView = UIView(frame: CGRectMake(0, 0, 0, 1))
        tableView.sectionFooterHeight = 0
        tableView.sectionHeaderHeight = 15
        
        // 设置导航栏标题
        self.navigationItem.title = "个人"
        
        // 加载数据模型
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return person.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return person[section].items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        // 设置 cell 文字
        cell.textLabel?.text = person[indexPath.section].items[indexPath.row].title
        

        
        // 设置 cell 图片
        let imageName = person[indexPath.section].items[indexPath.row].icon
        cell.imageView?.image = UIImage(named: imageName!)
        
        // 设置 cell 样式
        if indexPath.section == 2 && indexPath.row == 1 {
            cell.accessoryView = UISwitch()
        }else{
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if  (indexPath.section == 0 )  {
            return rowHeight * 1.75
        }
        return rowHeight
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
