//
//  AppDelegate.swift
//  Manab
//
//  Created by 123 on 9/26/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Add this if you only want to change Selected Image color
//        // and/or selected image text
//        UITabBar.appearance(). = UIColor.
//        [[UITabBar appearance] setTintColor:[UIColor redColor]];
//
//        // Add this code to change StateNormal text Color,
//        [UITabBarItem.appearance setTitleTextAttributes:
//            @{NSForegroundColorAttributeName : [UIColor greenColor]}
//            forState:UIControlStateNormal];
//
//        // then if StateSelected should be different, you should add this code
//        [UITabBarItem.appearance setTitleTextAttributes:
//            @{NSForegroundColorAttributeName : [UIColor purpleColor]}
//            forState:UIControlStateSelected];
        
//        let barbuttonFont = UIFont.systemFont(ofSize: 5)// (name: "Ubuntu", size: 15) ?? UIFont.systemFont(ofSize: 15)
//        
//        //        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: navbarFont, NSForegroundColorAttributeName:UIColor.whiteColor()]
//        
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: barbuttonFont, NSAttributedStringKey.foregroundColor:UIColor.red], for: UIControlState.selected)
//        let navbarFont = UIFont(name: "Ubuntu", size: 17) ?? UIFont.systemFontOfSize(17)
//        let barbuttonFont = UIFont(name: "Ubuntu-Light", size: 15) ?? UIFont.systemFontOfSize(15)
//
//        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: navbarFont, NSForegroundColorAttributeName:UIColor.whiteColor()]
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.whiteColor()], forState: UIControlState.Normal)
        
        return true
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

