//
//  SearchVC.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/20.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

protocol SearchVCDelegate {
    func searchExecute()
}

// 検索条件入力画面
class SearchVC: UIViewController, SearchViewDelegate {
    
    var searchView: SearchView?
    var delegate: SearchVCDelegate?
    var params: Params
    
    init(params: Params){
        self.params = params
        
        super.init(nibName: nil, bundle: nil)
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        
        searchView = SearchView(frame: self.view.bounds, params:self.params)
        
        searchView!.delegate = self
        self.view.addSubview(searchView)
    }
    
    func searchExecute() {
        delegate?.searchExecute()
    }
}