//
//  ResultTableVC.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/26.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

protocol ResultTableVCDelegate {
    func backPage()
    func changePageDetail(indexNo: Int)
}

// テーブルビューのVC
class ResultTableVC: UITableViewController, UITableViewDelegate {
    
    var params: Params

    // ナビゲーションバーに表示するボタン
    var button: UIBarButtonItem?
    var delegate: ResultTableVCDelegate?
    
    init(params: Params) {
        self.params = params
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ナビゲーションバーにBackボタンを配置
        button = UIBarButtonItem(title:"Back", style: UIBarButtonItemStyle.Bordered, target: self, action:"touchBackBtn:")
        self.navigationItem.leftBarButtonItem = button
    }
    
    // テーブルビューのセクション数
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    // テーブルビューの行数
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    // テーブルビューのセルが表示される時の処理
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        
        //セルのタイトル設定
        var row = indexPath?.row
        var cell: UITableViewCell = UITableViewCell()
        cell.textLabel.text = "Hello Cells \(row)"

        // セルに右向きのアローマークを表示
        cell.accessoryType = .DisclosureIndicator
        
        return cell
    }
    
    // テーブルビューのセルがタップされた時の処理
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath?) {
        delegate?.changePageDetail(indexPath!.row)
    }
    
    func touchBackBtn(sender: UIButton) {
        delegate?.backPage()
    }
}