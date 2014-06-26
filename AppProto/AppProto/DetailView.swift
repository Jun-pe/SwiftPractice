//
//  DetailView.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/20.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class DetailView: UIView {
    var label: UILabel?
    
    init(frame: CGRect, indexNo: Int) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.whiteColor()
        
        label = UILabel(frame: CGRectMake(20, 100, 220, 40))
        label!.text = "選ばれた行は \(indexNo) 行目"
        label!.textColor = UIColor.blackColor()
        
        self.addSubview(label)
    }
}