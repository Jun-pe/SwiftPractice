//
//  SearchView.swift
//  AppProto
//
//  Created by 阿部 潤平 on 2014/06/20.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIkit

protocol SearchViewDelegate {
    func searchExecute()
}
// pickerを使うにはUIPickerViewDataSource, UIPickerViewDelegate ２つを実装する必要がある
class SearchView: UIView , UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let segments = ["タイトル", "作者", "出版社"]
    let pickerTitles = ["本", "記事・論文", "新聞", "児童書", "その他"]
    
    let label: UILabel?
    let searchText: UITextField = UITextField()
    let segment: UISegmentedControl?
    let picker: UIPickerView = UIPickerView()
    let searchButton: UIButton = UIButton()

    var params: Params
    var delegate: SearchViewDelegate?
    
    init(frame: CGRect, params: Params) {
        self.params = params
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.whiteColor()
        
        // label
        label = UILabel(frame: CGRectMake(20,20, 220, 40))
        label!.text = "検索条件入力"
        label!.textColor = UIColor.blackColor()
        self.addSubview(label)
        
        // searchText
        searchText.frame = CGRectMake(20, 70, 280, 30)
        searchText.borderStyle = UITextBorderStyle.Bezel
        searchText.placeholder = "キーワードを入力してください。"
        searchText.delegate = self
        self.addSubview(searchText)
        
        // segment
        // 変数の宣言と同時に初期化するとsegmentsが読めなくてエラーになる
        segment = UISegmentedControl(items: segments)
        segment!.frame = CGRectMake(20, 120, 280, 40)
        segment!.selectedSegmentIndex = 0
        segment!.segmentedControlStyle = UISegmentedControlStyle.Plain
        segment!.addTarget(self, action:"segmentValueChanged:", forControlEvents:  UIControlEvents.ValueChanged)
        self.addSubview(segment)
        
        // label
        label = UILabel(frame: CGRectMake(20,180, 220, 40))
        label!.text = "資料種別"
        label!.textColor = UIColor.blackColor()
        self.addSubview(label)
        
        // picker
        picker = UIPickerView()
        picker.frame = CGRectMake(0,200, 320, 50)
        picker.delegate = self
        picker.dataSource = self
        picker.showsSelectionIndicator = true
        self.addSubview(picker)
        
        // searchButton
        searchButton.frame = CGRectMake(50, 420, 220, 40)
        searchButton.setTitle("検索", forState: .Normal)
        searchButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        searchButton.backgroundColor = UIColor(red: 1.0, green: 0.48, blue: 0.04, alpha: 1.0)
        searchButton.addTarget(self, action:"searchButtonTouch:", forControlEvents: .TouchUpInside)
        self.addSubview(searchButton)
    }
    
    // searchTextのキーボードを閉じる処理
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // searchButtonのタッチイベント
    func searchButtonTouch(sender: UIButton) {
        self.params.searchText = searchText.text        
        delegate!.searchExecute()
    }
    
    // segmentの値がかわった時の処理
    func segmentValueChanged(segment: UISegmentedControl) {
       self.params.searchKeywordType = segment.selectedSegmentIndex
    }
    
    // Pickerに表示する列数（必須）
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Pickerに表示する行数（必須）
    // obj-c
    // (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
/*
    // Pickerの幅
    // obj-c
    // (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        switch component {
        case 0:
            return 50.0
        case 1:
            return 100.0
        case 2:
            return 150.0
        default:
            return 0
        }
    }
*/
    // Pickerに表示する値　rowが行、componentが列
    // obj-c
    // (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        switch row {
        case 0,1,2,3:
            return pickerTitles[row]
        default:
            return "その他"
        }
    }
    
    // Pickerが止まった時の動き
    // obj-c
    // (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
    func pickerView(pickerView: UIPickerView,didSelectRow row: Int, inComponent component: Int) {
        var val = pickerView.selectedRowInComponent(0)
        switch val {
        case 0:
            self.params.searchGenre = 1
        case 1:
            self.params.searchGenre = 2
        case 2:
            self.params.searchGenre = 3
        case 3:
            self.params.searchGenre = 4
        default:
            self.params.searchGenre = 7
        }
    }
}