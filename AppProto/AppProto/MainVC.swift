//
//  MainVC.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/20.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class MainVC: UIViewController, SearchVCDelegate, ResultVCDelegate {

    var searchVC: SearchVC?
    var resultVC: ResultVC?
    
    // DTOを生成　使い回すのでMainVCで保持
    var params: Params = Params()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // DTOを画面に渡す
        searchVC = SearchVC(params: self.params)
        searchVC!.delegate = self
        
        // DTOを画面に渡す
        resultVC = ResultVC(params: self.params)
        
        self.view.addSubview(searchVC!.view)
//        self.view.addSubview(resultVC!.view)
    }
    
    // 検索実行時の画面遷移処理
    func searchExecute() {
        searchVC!.view.removeFromSuperview()
        
        resultVC!.delegate = self
        self.view.addSubview(resultVC!.view)
    }
    
    // 検索結果画面から戻るタップ時の処理
    func backPage() {
        resultVC!.view.removeFromSuperview()
        
        searchVC!.delegate = self
        self.view.addSubview(searchVC!.view)
    }
}