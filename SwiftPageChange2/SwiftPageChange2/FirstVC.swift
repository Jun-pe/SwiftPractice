//
//  SingleVC.swift
//  SwiftPageChange2
//
//  Created by 野田 潤平 on 2014/06/10.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// FirstViewのデリゲートを作るためにプロトコルを実装
class FirstVC: UIViewController, FirstViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstView = FirstView(frame: self.view.bounds)
        firstView.backgroundColor = UIColor.blueColor()
        
        // delegateの設定
        firstView.delegate = self
        self.view.addSubview(firstView)
    }
    
    // firstViewのbuttonイベントを取得
    func buttonTouched() {
        
        // viewの切り替え
        var viewControl: SecondVC = SecondVC()
        viewControl.modalTransitionStyle = .FlipHorizontal
        self.presentViewController(viewControl, animated:true, completion:nil)
    }
}