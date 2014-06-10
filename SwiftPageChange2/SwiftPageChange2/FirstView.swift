//
//  FirstView.swift
//  SwiftPageChange2
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// delegateを作るためにprotocolを実装
protocol FirstViewDelegate {
    func buttonTouched()
}
class FirstView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    var delegate: FirstViewDelegate?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        
        label.frame = CGRectMake(50, 60, 200, 30)
        label.text = "Hello Swift!"
        label.textColor = UIColor.blackColor()
        
        self.addSubview(label)
        
        button.frame = CGRectMake(100, 100, 120, 40)
        button.setTitle("遷移", forState: UIControlState.Normal)
        button.addTarget(self, action:"changePage:", forControlEvents:UIControlEvents.TouchUpInside)
        self.addSubview(button)
    }
    
    // buttonのイベントをキャッチ
    func changePage(sender: UIButton) {
        // delegate
        delegate?.buttonTouched()
    }
}