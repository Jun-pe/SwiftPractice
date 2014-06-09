//
//  view.swift
//  swiftHelloWorld3
//
//  Created by 野田 潤平 on 2014/06/09.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FiastView : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = UIView(frame: CGRectMake(0,0,320,568))
        self.view.backgroundColor = UIColor.orangeColor()
    }
}