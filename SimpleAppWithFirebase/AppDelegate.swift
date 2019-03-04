//
//  AppDelegate.swift
//  SimpleAppWithFirebase
//
//  Created by MisnikovRoman on 04/03/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
import Firebase
import AnalyticsWrapper

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

		FirebaseApp.configure()
		AnalyticsWrapper.shared.configure(type: Analytics.self)

		return true
	}
}

