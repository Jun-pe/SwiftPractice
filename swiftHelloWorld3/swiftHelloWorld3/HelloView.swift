//
//  HelloView.swift
//  swiftHelloWorld3
//
//  Created by 野田 潤平 on 2014/06/09.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
// UIKitのインポート
import UIKit

// UIViewを継承しない場合、superクラスのinitを呼べないので、普通にインスタンスを作る
/*
class HelloView {
    var view: UIView
    init(frame: CGRect) {
        self.view = UIView()
        self.view.frame = frame
        self.view.backgroundColor = UIColor.greenColor()
    }
}
*/

// Obj-C
/*
@implementation HelloView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor.orangeColor];
}
*/
// Swift
class HelloView: UIView ,UITextFieldDelegate {
    // obj-c UITextField *myText = [[UITextField alloc] initWithFrame:CGRectMake(....)
    let myText: UITextField = UITextField(frame: CGRectMake(20, 100, 200, 30))
    let myLabel: UILabel = UILabel()
    
    init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.orangeColor()
        
        myText.placeholder = "input here"
        myText.textColor = UIColor.blackColor()
        // obj-c UIReturnKeyDone
        myText.returnKeyType = .Done
        // obj-c UITextBorderStyleRoundedRect
        myText.borderStyle = .RoundedRect
        myText.delegate = self

        self.addSubview(myText)
        
        // frame は後から設定することもできる
        myLabel.frame = CGRectMake(20, 150, 200, 30)
        myLabel.text = "HelloWorld!"
        myLabel.backgroundColor = UIColor.greenColor()
        myLabel.textColor = UIColor.blackColor()
        
        self.addSubview(myLabel)
        
        var myButton: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        myButton.frame = CGRectMake(20, 200, 200, 50)
        myButton.backgroundColor = UIColor.whiteColor()
        myButton.setTitle("実行", forState:UIControlState.Normal)
        
        // obj-c [myButton addTarget:self action:@selector(changeGreeting:) forControlEvents:UIControlEventTouchUpInside];
        myButton.addTarget(self, action: "changeGreeting:", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(myButton)
    }
    
    // キーボードを閉じるためのresponder
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    func changeGreeting(sender: UIButton!) {
        myLabel.text = myText.text
        myText.text = ""
    }
}