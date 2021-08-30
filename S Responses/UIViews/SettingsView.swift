//
//  ContentView.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

import SwiftUI
import SwiftUIKit

struct SettingsView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	@StateObject private var sheetContext = SheetContext()
    
    /*init() {
	UITableView.appearance().backgroundColor = UIColor(red: 85/255, green: 125/255, blue: 139/255, alpha: 1)
	}*/
	
	@State public var informationalColor = Color(.white)
	@State public var successColor = Color(UIColor(red: 88/255, green: 176/255, blue: 0/255, alpha: 1))
	@State public var redirectColor = Color(UIColor(red: 114/255, green: 221/255, blue: 247/255, alpha: 1))
	@State public var clientErrorColor = Color(UIColor(red: 255/255, green: 51/255, blue: 51/255, alpha: 1))
	@State public var serverErrorColor = Color(UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1))
	@State var darkModeOption = false
	@State var darkModeUseSystemSettingsOption = true
	
	var body: some View {
		ZStack {
			Color(.systemBackground)
				.ignoresSafeArea()
			VStack {
				HStack {
					Button(action: {
						withAnimation {
							viewRouter.currentPage = .home
						}
					}) {
						HomeButtonContent()
						
					}
					Spacer()
				}
				Text("Settings")
					.font(.largeTitle)
					.bold()
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
							successColor = Color(UIColor(red: 88/255, green: 176/255, blue: 0/255, alpha: 1))
							redirectColor = Color(UIColor(red: 114/255, green: 221/255, blue: 247/255, alpha: 1))
							clientErrorColor = Color(UIColor(red: 255/255, green: 51/255, blue: 51/255, alpha: 1))
							serverErrorColor = Color(UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1))
						}, label: {
							Text("Default Background Colours")
								.font(.headline)
						})
					}
					
					Section {
						HStack {
							Image(systemName: "exclamationmark.triangle")
								.foregroundColor(.red)
								.font(.headline)
							Button(action: {webReportIssue()}, label: {
								Text("Report an Issue")
									.foregroundColor(.red)
									.font(.headline)
							})
						}.sheet(context: sheetContext)
					}
					
					Section(header: Text("About")) {
						HStack {
							Image(systemName: "questionmark.circle")
							Text("Version: \(UIApplication.appVersion!)")
								.foregroundColor(.label)
						}
						
						HStack {
							Image(systemName: "hand.raised")
							Button(action: {webPrivacyPolicy()}, label: {
								Text("Privacy Policy")
									.font(.headline)
									.foregroundColor(.label)
							})
						}
						HStack {
							Image(systemName: "star.leadinghalf.fill")
							Button(action: {webRateUs()}, label: {
								Text("Rate Our App")
									.font(.headline)
									.foregroundColor(.label)
							})
						}.sheet(context: sheetContext)
					}
				}
			}
		}
	}
}

extension UIApplication {
	static var appVersion: String? {
		return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
	}
}

extension SettingsView {
	
	private func webReportIssue() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com"))
	}
	
	private func webPrivacyPolicy() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com/privacy-policy"))
	}
	
	private func webRateUs() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com"))
	}
	
	private func visit(url: URL?) {
		guard let url = url else { return }
		sheetContext.present(WebView(url: url))
	}
}

struct HomeButtonContent : View {
	var body: some View {
		HStack {
			Image(systemName: "house.circle")
			Text("Home")
				.font(.title3)
				.bold()
		}
		.frame(width: 150, height: 50)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView()
				.environmentObject(ViewRouter())
                .environment(\.colorScheme, .light)
            
            SettingsView()
				.environmentObject(ViewRouter())
                .environment(\.colorScheme, .dark)
        }
    }
}
