//
//  FNextView.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FNextView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.greenColor()
        
        label.frame = CGRectMake(50, 60, 220, 40)
        label.text = "Hello! NextView!"
        label.textColor = UIColor.blackColor()
        
        self.addSubview(label)
        
        button.frame = CGRectMake(50, 120, 220, 40)
        button.setTitle("View切り替え 戻る", forState: UIControlState.Normal)
        button.addTarget(self, action:"changeViewBtn:", forControlEvents:UIControlEvents.TouchUpInside)
        
        self.addSubview(button)
    }
    
    func changeViewBtn(sender: UIButton) {
        var firstView: FirstView = FirstView(frame: self.bounds)
        self.superview.addSubview(firstView)
        self.removeFromSuperview()
    }
}