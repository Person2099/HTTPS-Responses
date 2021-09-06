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
					.keyboardShortcut(.cancelAction)
					Spacer()
				}
				
				// Title
				Text("Settings")
					.font(.largeTitle)
					.bold()
				
				Form {
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
					
					Section(header: "", footer: "This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.") {
						VStack {
							Image("CC BY SA Licence")
								.padding(.top)
								.multilineTextAlignment(.center)
							Button(action: {webCCBYSALicence()}, label: {})
						}.sheet(context: sheetContext)
					}
				}
			}
		}
	}
}

//MARK: UserDefaults Extension
// Adds an "exists()" function to userdefaults allowing to check for existence
extension UserDefaults {
	static func exists(key: String) -> Bool {
		return UserDefaults.standard.object(forKey: key) != nil
	}
}

//MARK: UIColor Extension
// Make it easier to get rgba values of a uicolour
extension UIColor {
	var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		var alpha: CGFloat = 0
		getRed(&red, green: &green, blue: &blue, alpha: &alpha)
		
		return (red, green, blue, alpha)
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
	
	private func webCCBYSALicence() {
		visit(url: URL(string: "https://creativecommons.org/licenses/by-sa/4.0/"))
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
