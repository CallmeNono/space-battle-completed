//
//  Score.swift
//  Space Invaders2
//
//  Created by 罗懿 on 15/11/5.
//  Copyright © 2015年 罗懿. All rights reserved.
//

import UIKit
class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    func numberOfSectionsInTableView(tableView: UITableView)->Int{
        return 1
    }
    func tableView(tableView: UITableView,numberOfRowsInSection section: Int) -> Int{
        return score.count
    }
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
        var CellIdentifier:NSString="Cell"
        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(CellIdentifier as String) as? UITableViewCell
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: CellIdentifier as String)
            cell?.backgroundColor=UIColor.clearColor()
            cell?.detailTextLabel?.textColor=UIColor.blackColor()
        }
        cell!.textLabel.text="\(score.objectAtIndex(indexPath.row))"
        cell!.detailTextLabel?.text="\(time.objectAtIndex(indexPath.row))"
    
        return cell!
        
        
        
        
    }
    
}