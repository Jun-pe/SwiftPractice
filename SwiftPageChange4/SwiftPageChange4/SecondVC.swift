//
//  SecondVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

protocol SecondVCDelegate {
    func changeVC(vcId:String)
}
class SecondVC: UIViewController, SecondViewDelegate {
    
    var secondView: SecondView?
    var delegate: SecondVCDelegate?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        secondView = SecondView(frame: self.view.bounds)
        secondView!.delegate = self
        self.view.addSubview(secondView)
    }
    
    func changeVC(vcId: String) {
        delegate?.changeVC(vcId)
    }
}