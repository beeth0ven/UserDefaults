//
//  DiskVar.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import Foundation


/**
 Provide a convenience struct to access NSUserDefaults,
 usage:
 
 ```swift
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
 ```
 */
struct DiskVar<Type: AnyObject> {
    let key: String
    let defaultValue: Type
    
    var value: Type {
        get { return userDefaults.objectForKey(key) as? Type ?? defaultValue }
        set { userDefaults.setObject(newValue, forKey: key); userDefaults.synchronize() }
    }
    
    private var userDefaults: NSUserDefaults { return NSUserDefaults.standardUserDefaults() }
    
}