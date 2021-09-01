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

//MARK: Declare AppDelegate
// AppDelegate is usually found only is storyboard based applications and not SwiftUI, however it is required by OneSignal (our notification provider) so is declared here
class AppDelegate: NSObject, UIApplicationDelegate {
	
	// Runs upon app launch
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Remove this method to stop OneSignal Debugging
        OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
        
        // OneSignal initialization
        OneSignal.initWithLaunchOptions(launchOptions)
        OneSignal.setAppId("ef8def33-83bd-4d70-8cbe-20e82ba00c1d")
        
        // promptForPushNotifications; shows the native iOS notification permission prompt.
        OneSignal.promptForPushNotifications(userResponse: { accepted in
			logger.info("User accepted notifications: \(accepted)")
        })
        
        return true
    }
}
