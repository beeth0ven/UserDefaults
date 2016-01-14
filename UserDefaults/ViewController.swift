//
//  ViewController.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var history = DiskVar<[String]>(key: "ViewController.count", defaultValue: ["Wuhan"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // get
        print(history.rawValue)
        
        // set
        history.rawValue.append("ChangSha")
        print(history.rawValue)
    }

}
