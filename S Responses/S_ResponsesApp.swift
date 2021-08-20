//
//  S_ResponsesApp.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

import SwiftUI

@main
struct S_ResponsesApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
