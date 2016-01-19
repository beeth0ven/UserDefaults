//
//  ViewController.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var history = DiskVar<[String]>(key: "ViewController.history", defaultValue: ["cat"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // get
        print(history.rawValue)
        
        // set
        history.rawValue.append("dog")
        print(history.rawValue)
    }
    
}
