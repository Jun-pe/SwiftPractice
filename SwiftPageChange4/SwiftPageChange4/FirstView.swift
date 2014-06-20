//
//  FirstView.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// delegate処理を２つ実装
protocol FirstViewDelegate {
    func changeVC(vcId: String)
    func changeView(viewId: String)
}
class FirstView: UIView {

    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    var buttonVCChange: UIButton = UIButton()
    var delegate: FirstViewDelegate?
    
    init(frame: CGRect){
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blueColor()
        
        label.frame = CGRectMake(50, 60, 220, 40)
        label.text = "Hello! SwiftChange4"
        label.textColor = UIColor.whiteColor()
        
        self.addSubview(label)
        
        button.frame = CGRectMake(50, 120, 220, 40)
        button.setTitle("view切り替え", forState: UIControlState.Normal)
        button.addTarget(self, action:"changeViewBtn:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(button)
        
        buttonVCChange.frame = CGRectMake(50, 180, 220, 40)
        buttonVCChange.setTitle("SecondVCを表示", forState: UIControlState.Normal)
        buttonVCChange.addTarget(self, action:"changeSecondVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(buttonVCChange)
    }
    
    // 自分自身を親Viewからremoveして次のviewを張り直す
    // 制御しにくいのでFirstVCでViewきりかえ
/*    func changeViewbtn(sender: UIButton) {

        var fNextView: FNextView = FNextView(frame: self.bounds)
        self.superview.addSubview(fNextView)
        self.removeFromSuperview()
    }
*/
    func changeViewBtn(sender: UIButton){
        delegate?.changeView("f")
    }
    
    func changeSecondVC(sender: UIButton){
        delegate?.changeVC("second")
    }
}
