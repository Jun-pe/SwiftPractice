//
//  MainVC.swift
//  SwiftPageChange4
//
//  Created by 阿部 潤平 on 2014/06/19.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

// windowに直接乗る基底となるVC　他のVCの切り替えをコントロールする
class MainVC: UIViewController, FirstVCDelegate, SecondVCDelegate {
    
    var firstVC: FirstVC?
    var secondVC: SecondVC?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        firstVC = FirstVC()
        secondVC = SecondVC()
        
        firstVC!.delegate = self
        self.view.addSubview(firstVC!.view)
    }
    
    // VCの切り替え処理
    func changeVC(vcId: String) {
        // やっていることはviewの切り替えと同じで、現在のviewを除去して新しいviewを張り直している
        if (vcId == "second") {
            firstVC!.view.removeFromSuperview()
            secondVC!.delegate = self
            self.view.addSubview(secondVC!.view)
        } else {
            secondVC!.view.removeFromSuperview()
            firstVC!.delegate = self
            self.view.addSubview(firstVC!.view)
        }
    }
}