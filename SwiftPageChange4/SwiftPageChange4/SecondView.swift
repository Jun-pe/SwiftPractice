//
//  SecondView.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIView {
    
    var label: UILabel = UILabel()
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blackColor()
        
        label.frame = CGRectMake(100, 20, 280, 40)
        label.text = "Welcome to UnderGround..."
        label.textColor = UIColor.redColor()
        
        self.addSubview(label)
    }
}