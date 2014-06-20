//
//  SecondView.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

protocol SecondViewDelegate {
    func changeVC(vcId: String)
}
class SecondView: UIView {
    
    var label: UILabel = UILabel()
    var buttonVCChange: UIButton = UIButton()
    var delegate: SecondViewDelegate?
    
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blackColor()
        
        label.frame = CGRectMake(20, 60, 280, 40)
        label.text = "Welcome to UnderGround..."
        label.textColor = UIColor.redColor()
        
        self.addSubview(label)
        
        buttonVCChange.frame = CGRectMake(50, 120, 220, 40)
        buttonVCChange.setTitle("FirstVCを表示", forState: UIControlState.Normal)
        buttonVCChange.addTarget(self, action:"changeFirstVC:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.addSubview(buttonVCChange)
    }
    
    func changeFirstVC(sender: UIButton) {
        delegate?.changeVC("first")
    }
}