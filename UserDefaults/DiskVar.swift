//
//  DiskVar.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import Foundation

/**
 Provide a convenience method to access NSUserDefaults,
 usage:
 
 ```swift
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
 ```
 */
struct DiskVar<Type: Any> {
    let key: String
    let defaultValue: Type
    
    var rawValue: Type {
        get { return userDefaults.objectForKey(key) as? Type ?? defaultValue }
        set { userDefaults.setObject(newValue as? AnyObject, forKey: key); userDefaults.synchronize() }
    }
    
    private var userDefaults: NSUserDefaults { return NSUserDefaults.standardUserDefaults() }
    
}
