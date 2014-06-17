//
//  SingleVC.swift
//  SwiftPageChange3
//
//  Created by 阿部 潤平 on 2014/06/17.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// delegateを読み込むためにprotocolを実装
class SingleVC: UIViewController, FirstViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstView = FirstView(frame: self.view.bounds)
        firstView.backgroundColor = UIColor.blueColor()

        // delegateの設定
        firstView.delegate = self
        self.view.addSubview(firstView)
    }
    
    func buttonTouched(pageCd: String){
        // view の切り替え
        var nextView: UIView!
        
        if (pageCd == "f") {
            nextView = SecondView(frame: self.view.bounds)
            nextView.backgroundColor = UIColor.greenColor()
        }
        for uv : AnyObject in self.view.subviews {
            uv.removeFromSuperview()
        }
        self.view.addSubview(nextView)
    }
}