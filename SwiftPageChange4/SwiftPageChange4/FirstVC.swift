//
//  FirstVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    
    var firstView: FirstView?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // Viewを生成
        firstView = FirstView(frame: self.view.bounds)
        
        self.view.addSubview(firstView)
    }
}