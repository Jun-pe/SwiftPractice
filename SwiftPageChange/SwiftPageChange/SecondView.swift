//
//  SecondView.swift
//  SwiftPageChange
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.greenColor()
        
        // ラベルの設定
        label.frame = CGRectMake(50, 60, 200, 30)
        label.text = "Hello Second Page!"
        label.textColor = UIColor.redColor()
        
        self.addSubview(label)
        
        // ボタンの設定
        button.frame = CGRectMake(100, 100, 120, 40)
        button.setTitle("閉じる", forState:UIControlState.Normal)
        button.addTarget(self, action:"closePage:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(button)
    }
    
    func closePage(sender: UIButton){
        self.removeFromSuperview() 
    }
}