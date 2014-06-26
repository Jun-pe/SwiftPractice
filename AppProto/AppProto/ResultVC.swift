//
//  ResultVC.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/20.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIkit

// 検索画面へ戻るようのdelegate
protocol ResultVCDelegate {
    func backPage()
}

class ResultVC: UIViewController, ResultTableVCDelegate {
    var resultTableVC: ResultTableVC?
    var detailVC: DetailVC?
    
    var params: Params!
    var itemDetails: ItemDetails!
    
    var navControl: UINavigationController?
    var delegate: ResultVCDelegate?
    
    init(params: Params) {
        self.params = params
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        // テーブルビューの生成とナビゲーションの設定
        resultTableVC = ResultTableVC(params: self.params)
        navControl = UINavigationController(rootViewController: resultTableVC)
        
        detailVC = DetailVC()
        
        resultTableVC!.delegate = self
        self.view.addSubview(navControl!.view)
    }
    
    override func viewWillAppear(animated: Bool) {
        itemDetails = ItemDetails(params: params)
    }
    
    func backPage() {
        delegate?.backPage()
    }
    
    func changePageDetail(indexNo: Int) {

        detailVC!.setIndexNo(indexNo)
        navControl!.pushViewController(detailVC, animated: true)
    }
}