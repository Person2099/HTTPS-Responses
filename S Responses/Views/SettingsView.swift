//
//  SettingsView.swift
//  HTTPS Responses
//
//  Created by Sebastian Keet on 6/9/2023.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    //MARK: Define Variables
    @Environment(\.requestReview) var requestReview
    @State var darkModeOption = false
    @State var darkModeUseSystemSettingsOption = true
    
    //MARK: View
    var body: some View {
        ZStack { // ZStack allowing the background to be shown behind the general view
            Color(.systemBackground) // Background Colour
                .ignoresSafeArea() // Ignores Safe Area (Interactable) Boundaries filling the whole screen
            VStack {
                Form(content: {
                    // About Section
                    Section(header: Text("About")) {
                        // Current App Version
                        HStack {
                            Image(systemName: "questionmark.circle")
                            Text("Version: \(UIDevice.current.systemVersion)")
                                .foregroundColor(.primary)
                                .font(.headline)
                        }
                        
                        Link(destination: URL(string: "https://httpsresponselookup.onuniverse.com/privacy-policy")!, label: {
                            HStack {
                                Image(systemName: "hand.raised")
                                Text("Privacy Policy")
                                    .font(.headline)
                            }
                        })
                        
                        // TODO: Update Link to Rating
                        // Rate Us Button (Will link to app store however currently forwards to website)
                        Button(action: { requestReview() }, label: {
                            HStack {
                                Image(systemName: "star.leadinghalf.fill")
                                Text("Rate Our App")
                                    .font(.headline)
                            }
                        })
                        
                    }
                    
                    // Link to Report an Issue
                    Section {
                        Link(destination: URL(string: "https://httpsresponses.typeform.com/app-feedback")!, label: {
                            HStack {
                                Image(systemName: "exclamationmark.triangle")
                                    .foregroundColor(.red)
                                    .font(.headline)
                                Text("Report an Issue")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                            }
                        })
                    }
                    
                    Section() {
                        Link(destination: URL(string: "https://creativecommons.org/licenses/by-sa/4.0/")!, label: {
                            VStack {
                                Image("CC BY SA Licence")
                                    .padding(.top)
                                    .multilineTextAlignment(.center)
                                Text("This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.")
                                    .multilineTextAlignment(.center)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                            }
                        })
                    }
                })
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}
