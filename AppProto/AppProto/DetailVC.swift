//
//  DetailVC.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/26.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class DetailVC: UIViewController {
    
    var indexNo: Int = -1
    var detailView: DetailView?
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        detailView = DetailView(frame: self.view.bounds, indexNo: self.indexNo)
        
        self.view.addSubview(detailView)
    }
    
    func setIndexNo(val: Int) {
        self.indexNo = val
    }
}