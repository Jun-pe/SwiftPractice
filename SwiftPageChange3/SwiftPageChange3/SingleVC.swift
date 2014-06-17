//
//  SingleVC.swift
//  SwiftPageChange3
//
//  Created by 阿部 潤平 on 2014/06/17.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SingleVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstView = FirstView(frame: self.view.bounds)
        firstView.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(firstView)
    }
}