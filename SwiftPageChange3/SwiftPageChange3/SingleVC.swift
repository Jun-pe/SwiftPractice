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
    
    var firstView: FirstView?
    var secondView: SecondView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView = FirstView(frame: self.view.bounds)
        secondView = SecondView(frame: self.view.bounds)
        
        // delegateの設定
        firstView!.delegate = self
        self.view.addSubview(firstView)
    }
    
    func buttonTouched(pageCd: String){

        // 遷移先のViewを生成
        if (pageCd == "f") {
            
            // 今あるViewを除去
            firstView!.removeFromSuperview()
            
            // delegateの登録は毎回やらないとダメ
            secondView!.delegate = self
            viewChange(secondView!)
        } else {
            
            // 今あるViewを除去
            secondView!.removeFromSuperview()
            
            // delegateの登録は毎回やらないとダメ
            firstView!.delegate = self
            viewChange(firstView!)
        }
        
    }
    // viewの切り替えを実施
    func viewChange(view: UIView){
        self.view.addSubview(view)
    }
}