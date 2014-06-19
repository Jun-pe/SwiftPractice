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

        // 遷移先のViewを生成
        if (pageCd == "f") {
            var secondView = SecondView(frame: self.view.bounds)
            secondView.backgroundColor = UIColor.greenColor()
            secondView.delegate = self
            // delegateの登録は毎回やらないとダメ
            viewChange(secondView)
        } else {
            var firstView = FirstView(frame: self.view.bounds)
            // 新しくviewが作られていることを確認するために２度目以降の遷移時には背景色が赤になるようにしてる
            firstView.backgroundColor = UIColor.redColor()
            firstView.delegate = self
            viewChange(firstView)
        }
        
    }
    // viewの切り替えを実施
    func viewChange(view: UIView){
        // 現在のviewをすべて削除する
        for uv : AnyObject in self.view.subviews {
            uv.removeFromSuperview()
        }
        self.view.addSubview(view)
    }
}