//
//  FirstView.swift
//  SwiftPageChange
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FirstView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    var secondView: UIView?
    
    init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = UIColor.orangeColor()
        
        // ラベルの設定
        label.frame = CGRectMake(50, 60, 200, 30)
        label.text = "Hello Swift!"
        label.textColor = UIColor.blackColor()
        
        self.addSubview(label)
        
        // ボタンの設定
        button.frame = CGRectMake(100, 100, 120, 40)
        button.setTitle("遷移", forState:UIControlState.Normal)
        button.addTarget(self, action:"changePage:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(button)
    }
    
    // ボタン押下時のイベント
    func changePage(sender: UIButton) {
        // secondView が存在しない場合、secondViewを生成
        if (!secondView?.isDescendantOfView(self)) {
            var secondView = SecondView(frame: self.bounds)
            self.addSubview(secondView)
        } else {
            // secondViewがすでに存在する場合、secondViewを削除
            secondView?.removeFromSuperview()
        }
    }
}