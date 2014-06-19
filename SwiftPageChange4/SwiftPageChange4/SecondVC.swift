//
//  SecondVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController {
    
    var secondView: SecondView?
    override func viewDidLoad(){
        super.viewDidLoad()
        
        secondView = SecondView(frame: self.view.bounds)
        
        self.view.addSubview(secondView)
    }
}