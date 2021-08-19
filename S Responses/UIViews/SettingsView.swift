//
//  ContentView.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

import SwiftUI
import SwiftUIX

struct SettingsView: View {
    
    /*init() {
        UITableView.appearance().backgroundColor = UIColor(red: 85/255, green: 125/255, blue: 139/255, alpha: 1)
    }*/
    
    @State var informationalColor = Color(.white)
    @State var successColor = Color(.green)
    @State var redirectColor = Color(.blue)
    @State var clientErrorColor = Color(.red)
    @State var serverErrorColor = Color(.yellow)
    @State var darkModeOption = false
    @State var darkModeUseSystemSettingsOption = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Display"), footer: Text("System settings will override Dark Mode and use the current device theme")) {
                    
                    Toggle(isOn: $darkModeOption, label: {
                        Text("Dark Mode")
                    })
                    .disabled(true)
                    
                    Toggle(isOn: $darkModeUseSystemSettingsOption, label: {
                        Text("Use System Settings")
                    })
                    .disabled(true)
                }
                Section(header: Text("Custom Background Colours")) {
                    ColorPicker("Informational", selection: $informationalColor )
                    ColorPicker("Success", selection: $successColor )
                    ColorPicker("Redirect", selection: $redirectColor )
                    ColorPicker("Client Error", selection: $clientErrorColor )
                    ColorPicker("Server Error", selection: $serverErrorColor )
                    
                    Button(action: {
                        informationalColor = Color(.white)
                        successColor = Color(.green)
                        redirectColor = Color(.blue)
                        clientErrorColor = Color(.red)
                        serverErrorColor = Color(.yellow)
                    }, label: {
                        Text("Default Background Colours")
                            .font(.headline)
                    })
                }
                
                Section {
                    Link("Report an Issue", destination: URL(string: "https://httpsresponselookup.onuniverse.com")!)
                        .foregroundColor(.red)
                        .font(.headline)
                }
                
                Section(header: Text("About")) {
                    Label("Version: \(UIApplication.appVersion!)", systemImage: "questionmark.circle")
                        .foregroundColor(.label)
                }
                
            }
            .navigationTitle("Settings")
        }
    }
}

extension UIApplication {
    static var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView()
                .environment(\.colorScheme, .light)
            
            SettingsView()
                .environment(\.colorScheme, .dark)
        }
    }
}
