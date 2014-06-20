//
//  FirstVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// VC切り替えようのdelegateはMainVCまで到達させたいので、さらにdelegateを渡す処理
protocol FirstVCDelegate {
    func changeVC(vcId: String)
}
// MainVCの上に乗るVC　配下のViewをコントロールする
class FirstVC: UIViewController, FirstViewDelegate, FNextViewDelegate {
    
    // このVCが使うViewを先に生成しておく
    var firstView: FirstView?
    var fnextView: FNextView?
    
    var delegate: FirstVCDelegate?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // Viewを生成
        firstView = FirstView(frame: self.view.bounds)
        fnextView = FNextView(frame: self.view.bounds)
        firstView!.delegate = self
        self.view.addSubview(firstView)
    }
    
    // VCの切り替え処理
    func changeVC(vcId: String){
        delegate?.changeVC(vcId)
    }
    
    // viewの切り替え処理
    func changeView(viewId: String){
        if(viewId == "f"){
            firstView!.removeFromSuperview()
            fnextView!.delegate = self
            self.view.addSubview(fnextView)
        } else {
            fnextView!.removeFromSuperview()
            firstView!.delegate = self
            self.view.addSubview(firstView)
        }
    }
}