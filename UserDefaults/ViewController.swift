//
//  ViewController.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = DiskVar<NSNumber>(key: "ViewController.count", defaultValue: 5)
    
    func getCount() {
        print(count.value.integerValue)
    }
    
    func setCount() {
        count.value = 5
        print(count.value.integerValue)
    }
}

