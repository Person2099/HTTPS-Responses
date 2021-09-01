//
//  ContentView.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

//MARK: Import Dependencies
import SwiftUI
import SwiftUIKit

//MARK: SettingsView Declaration
struct SettingsView: View {
	
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	
	// URL Object
	@Environment(\.openURL) var openURL
	
	//MARK: Define Variables
	@StateObject private var sheetContext = SheetContext()
	@State public var informationalColor = Color(.white)
	@State public var successColor = Color(UIColor(red: 88/255, green: 176/255, blue: 0/255, alpha: 1))
	@State public var redirectColor = Color(UIColor(red: 114/255, green: 221/255, blue: 247/255, alpha: 1))
	@State public var clientErrorColor = Color(UIColor(red: 255/255, green: 51/255, blue: 51/255, alpha: 1))
	@State public var serverErrorColor = Color(UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1))
	@State var darkModeOption = false
	@State var darkModeUseSystemSettingsOption = true
	
	//MARK: View
	var body: some View {
		ZStack { // ZStack allowing the background to be shown behind the general view
			Color(.systemBackground) // Background Colour
				.ignoresSafeArea() // Ignores Safe Area (Interactable) Boundaries filling the whole screen
			VStack {
				HStack {
					// Return to HomeView with animation (animation defined in MotherView.swift)
					Button(action: {
						withAnimation {
							viewRouter.currentPage = .home
						}
					}) {
						HomeButtonContent() // UI of Home Button
						
					}
					Spacer()
				}
				
				// Title
				Text("Settings")
					.font(.largeTitle)
					.bold()
				
				Form {
					// Display Settings
					Section(header: Text("Display"), footer: Text("System settings will override Dark Mode and use the current device theme")) {
						
						// Dark Mode Toggle
						Toggle(isOn: $darkModeOption, label: {
							Text("Dark Mode")
						})
						.disabled(true)
						
						// Use System Settings Toggle
						Toggle(isOn: $darkModeUseSystemSettingsOption, label: {
							Text("Use System Settings")
						})
						.disabled(true)
					}
					// Background Colours Section
					Section(header: Text("Custom Background Colours")) {
						ColorPicker("Informational", selection: $informationalColor )
						ColorPicker("Success", selection: $successColor )
						ColorPicker("Redirect", selection: $redirectColor )
						ColorPicker("Client Error", selection: $clientErrorColor )
						ColorPicker("Server Error", selection: $serverErrorColor )
						
						// Reset Background Colours to Default Button
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
					
					// Link to Report an Issue
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
					
					// About Section
					Section(header: Text("About")) {
						// Current App Version
						HStack {
							Image(systemName: "questionmark.circle")
							Text("Version: \(appVersion())")
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
						
						// Rate Us Button (Will link to app store however currently forwards to website)
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

//MARK: SettingsView Extension
// Extension used for functions
extension SettingsView {
	
	// Return App Version and Build Number as a string e.g "1.0 (5)"
	private func appVersion() -> String {
		if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String, let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
			return "\(version) (\(build))"
		} else {
			// Handle Error
			logger.critical("appVersion() func found no app version")
			return "Something went wrong!"
		}
	}
	
	// Forward To Report an Issue Sheet (currently forwards to app website)
	private func webReportIssue() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com"))
	}
	
	// Forward to Privacy Policy website
	private func webPrivacyPolicy() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com/privacy-policy"))
	}
	
	// Forward to app store (currently forwards to app website)
	private func webRateUs() {
		visit(url: URL(string: "https://httpsresponselookup.onuniverse.com"))
	}
	
	// Visits input URL
	private func visit(url: URL?) {
		guard let url = url else { return }
		sheetContext.present(WebView(url: url))
	}
}

//MARK: Define Home Button Appearance
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

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
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
