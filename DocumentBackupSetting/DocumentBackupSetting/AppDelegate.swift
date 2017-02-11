//
//  AppDelegate.swift
//  DocumentBackupSetting
//
//  Created by hsnm on 2017/02/11.
//  Copyright © 2017年 hsnm. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setDocumentBackup()
        
        return true
    }
    
    func setDocumentBackup() {
        if let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
            let url = NSURL(fileURLWithPath: documentPath)
            do {
                try url.setResourceValue(true, forKey: URLResourceKey.isExcludedFromBackupKey)
            } catch {
                print("failed to set resource value")
            }
            
//            let url = URL(fileURLWithPath: documentPath)
//            var resourceValueList = URLResourceValues()
//            resourceValueList.isExcludedFromBackup = true
//            do {
//                // Error: Cannot convert value of type 'URLResourceValues' to expected argument type '[URLResourceKey : AnyObject]'
//                try url.setResourceValues(resourceValueList)
//            } catch {
//                print("failed to set resource value")
//            }
        }
    }
}
