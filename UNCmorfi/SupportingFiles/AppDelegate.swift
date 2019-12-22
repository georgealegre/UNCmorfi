//
//  AppDelegate.swift
//  UNCmorfi
//
//  Created by George Alegre on 4/3/17.
//
//  LICENSE is at the root of this project's repository.
//

import UIKit
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        DataRequest.addAcceptableImageContentTypes(["application/octet-stream"])

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.tintColor = .systemOrange
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }
}
