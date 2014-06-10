//
//  ViewCOntroller.swift
//  swiftHelloWorld3
//
//  Created by 野田 潤平 on 2014/06/09.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        var helloView = HelloView(frame: self.view.bounds)
        self.view.addSubview(helloView)
        
    }
}