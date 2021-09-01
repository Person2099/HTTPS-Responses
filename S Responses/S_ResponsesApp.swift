//
//  S_ResponsesApp.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

//MARK: Import Dependencies
import SwiftUI

// Define App
@main
struct S_ResponsesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate // Link AppDelegate
	@StateObject var viewRouter = ViewRouter() // Link viewRouter as ViewRouter
    
    var body: some Scene {
        WindowGroup {
			MotherView().environmentObject(viewRouter) // Display page indicated in ViewRouter
        }
    }
}
