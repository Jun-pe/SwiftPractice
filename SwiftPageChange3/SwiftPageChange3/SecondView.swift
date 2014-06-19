//
//  SecondView.swift
//  SwiftPageChange3
//
//  Created by 阿部 潤平 on 2014/06/17.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

protocol SecondViewDelegate {
    func buttonTouched(pageCd: String)
}
class SecondView: UIView {
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    var delegate: SecondViewDelegate?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        
        label.frame = CGRectMake(50, 60, 200, 30)
        label.textColor = UIColor.blackColor()
        label.text = "chage the page!"
        self.addSubview(label)
        
        button.frame = CGRectMake(100, 100, 120, 40)
        button.setTitle("戻る", forState: UIControlState.Normal)
        button.addTarget(self, action:"backPage:", forControlEvents:UIControlEvents.TouchUpInside)
        self.addSubview(button)
    }
    
    func backPage(sender: UIButton) {
        delegate?.buttonTouched("s")
    }
    
}