//
//  FirstView.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FirstView: UIView {

    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blueColor()
        
        label.frame = CGRectMake(50, 60, 200, 40)
        label.text = "Hello! SwiftChange4"
        label.textColor = UIColor.whiteColor()
        
        self.addSubview(label)
        
        
    }
}
