//
//  ViewController.swift
//  SwiftSimpleTable
//
//  Created by 阿部 潤平 on 2014/06/25.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // #pragma mark - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        var cell: UITableViewCell = UITableViewCell()
        cell.textLabel.text = "Hello World \(indexPath?.row)"
        
        return cell
    }
}