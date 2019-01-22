//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Enes Reha GILBAZ on 13.01.2019.
//  Copyright © 2019 Enes Reha GILBAZ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    //uygulama acildiginda ilk burasi calisiyor
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        //This is just gonna show us that the last item we added to our list has been saved somewhere even we can not see it in our tableview. when we run it in debug console it gives us the device ID, it's called UUID. It identifies our device uniquely so that could be all simulated device or it could be a physical device. At this addres we go to Library and preferences and find we plist. When we look at the plist we see the last item that we added. It doesn't show up because we didn't use it to retrieve the data.
        return true
    }

    //mesela uygulamadayken bir cagri geldi, o zaman bu method calisiyor.Bu methodu bu tarz durumlarda data kaybetmenin onune gecmek icin kullaniyoruz. Mesela bir form doldururken biri aradi ve geri dondugumuzde bakiyoruz ki tum yazdiklarimiz silinmis.Bu method bunun onune gecmek icin kullaniliyor.
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    //bu method da uygulama ekrandan kayboldugunda calisiyor. Mesela home screene bastigimizda ya da baska bir uygulama actigimizda
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    //bu method uygulama sona erdirildiginde calisiyor. Kullanici tarafindan veya sistem tarafindan sona erdirilmis olabilir. Mesela yeni bir uygulama actik ve bu uygulama cok fazla sistem tuketiyor o zaman bizim uygulamamiz backgroundda olmasi gerekirken operating system tarafindan sonlandiriliyor.
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        
    }


}

