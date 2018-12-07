//
//  AppDelegate.swift
//  demo
//
//  Created by tongyang on 2018-12-07.
//  Copyright © 2018 tongyang. All rights reserved.
//

import UIKit
import RTRootNavigationController
import CYLTabBarController
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.main.bounds);
        
        self.window?.backgroundColor = UIColor.white;
        
        let mainTabBarVc = CYLTabBarController(viewControllers: [HomeViewController(), MineViewController()], tabBarItemsAttributes: self.tabBarItemsAttributesForController())
        
        self.window?.rootViewController = RTRootNavigationController(rootViewController: mainTabBarVc!);
        
        self.window?.makeKeyAndVisible();
        
        return true
    }

    func tabBarItemsAttributesForController() ->  [[String : String]] {
        
        let tabBarItemOne = [CYLTabBarItemTitle:"首页", CYLTabBarItemImage:"tabbar_home_normal", CYLTabBarItemSelectedImage:"tabbar_home_highlight"]
        
        let tabBarItemFour = [CYLTabBarItemTitle:"我的", CYLTabBarItemImage:"tabbar_account_normal", CYLTabBarItemSelectedImage:"tabbar_account_highlight"]
        
        let tabBarItemsAttributes = [tabBarItemOne,tabBarItemFour]
        
        return tabBarItemsAttributes
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

