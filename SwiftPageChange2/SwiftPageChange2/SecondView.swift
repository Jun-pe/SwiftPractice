//
//  SecondView.swift
//  SwiftPageChange2
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIView {
    var label: UILabel = UILabel()
    
    init(frame: CGRect) {
        super.init(frame: frame)
        
        label.frame = CGRectMake(50, 60, 200, 30)
        label.textColor = UIColor.blackColor()
        label.text = "Welcom SecondView!"
        
        self.addSubview(label)
    }
}