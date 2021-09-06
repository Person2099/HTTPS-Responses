//
//  AppDelegate.swift
//  S Responses
//
//  Created by Sebastian Keet on 20/8/21.
//

//MARK: Import Dependencies
import Foundation
import UIKit
import OneSignal
import Sentry

//MARK: Declare AppDelegate
// AppDelegate is usually found only is storyboard based applications and not SwiftUI, however it is required by OneSignal (our notification provider) so is declared here
class AppDelegate: NSObject, UIApplicationDelegate {
	
	// Runs upon app launch
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
		SentrySDK.start { options in
			options.dsn = "https://45e18479122e4c4c84f73d8d4569f982@o297509.ingest.sentry.io/5946719"
			options.debug = true // Enabled debug when first installing is always helpful
			options.sessionTrackingIntervalMillis = 60000
			options.tracesSampleRate = 1.0
		}
		
        // Remove this method to stop OneSignal Debugging
        OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
        
        // OneSignal initialization
        OneSignal.initWithLaunchOptions(launchOptions)
        OneSignal.setAppId("ef8def33-83bd-4d70-8cbe-20e82ba00c1d")
        
        // promptForPushNotifications; shows the native iOS notification permission prompt.
        registerForPushNotifications()
        
        return true
    }
	
	func registerForPushNotifications() {
		//1
		UNUserNotificationCenter.current()
			//2
			.requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
				//3
				logger.log("Permission granted: \(granted)")
			}
	}
}
