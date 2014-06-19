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
class SingleVC: UIViewController, FirstViewDelegate, SecondViewDelegate {
    
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

        
        if (pageCd == "f") {
            var secondView = SecondView(frame: self.view.bounds)
            secondView.backgroundColor = UIColor.greenColor()
            secondView.delegate = self
            viewChange(secondView)
        } else {
            var firstView = FirstView(frame: self.view.bounds)
            firstView.backgroundColor = UIColor.redColor()
            firstView.delegate = self
            viewChange(firstView)
        }
        
    }
    func viewChange(view: UIView){
        for uv : AnyObject in self.view.subviews {
            uv.removeFromSuperview()
        }
        self.view.addSubview(view)
    }
}