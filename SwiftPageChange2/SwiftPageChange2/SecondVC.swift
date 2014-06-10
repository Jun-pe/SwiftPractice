//
//  SecondVC.swift
//  SwiftPageChange2
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var secondView = SecondView(frame: self.view.bounds)
        secondView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(secondView)
    }
}