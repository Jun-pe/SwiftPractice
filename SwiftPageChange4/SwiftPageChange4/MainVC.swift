//
//  MainVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class MainVC: UIViewController {
    
    var firstVC: FirstVC?
    var secondVC: SecondVC?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        firstVC = FirstVC()
        secondVC = SecondVC()
        
        self.view.addSubview(firstVC!.view)
//        self.view.addSubview(secondVC!.view)
    }
}