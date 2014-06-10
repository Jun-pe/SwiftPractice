//
//  FirstVC.swift
//  SwiftPageChange
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstView = FirstView(frame: self.view.bounds)
        self.view.addSubview(firstView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
