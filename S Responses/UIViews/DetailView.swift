//
//  SwiftUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

//MARK: Import Dependencies
import SwiftUI
import SwiftUIX
import SwiftUIKit

//MARK: Global Variables
var current: Int = 0

//MARK: DetailView Declaration
struct DetailView: View {
	
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	
	//MARK: View
	// This is the page that is shown after the app finishes launching
	var body: some View {
		// ZStack allowing the background to be shown behind the general view
		ZStack {
			Color(Background()) // Background Colour
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
				ScrollView { // Allows text to flow out of view area and be scrolled to
					VStack {
						VStack {
							// Response Code
							Text(String(current))
								.font(.custom("bahnschrift.ttf", size: 200))
								.foregroundColor(.black)
							
							// Title
							Text(Variables().RCRelation[current]?.responseCodeTitle ?? "Error - Please Contact Developers of HTTP/S Repsonses")
								.font(.custom("bahnschrift.ttf", size: 30))
								.bold()
								.padding()
								.foregroundColor(.black)
						}
						
						VStack {
							// Simplified Definition
							Text("This is \(aOrAn()) \(Variables().RCRelation[current]!.responseCodeType) response code\n\n\(Variables().RCRelation[current]?.simplifiedDef ?? "AN ERROR HAS OCCURED PLEASE CONTACT THE HTTP/S LOOKUP DEVELOPMENT TEAM")")
								.padding()
								.frame(width: (UIScreen.main.bounds.width / 8) * 7)
								.background(
									RoundedRectangle(cornerRadius: 25.0, style: .continuous)
										.opacity(0.15)
								)
								.foregroundColor(.black)
							
							// Detailed Definition
							Text(Variables().RCRelation[current]?.detailedDef ?? "AN ERROR HAS OCCURED PLEASE CONTACT THE HTTP/S LOOKUP DEVELOPMENT TEAM")
								.padding()
								.frame(width: (UIScreen.main.bounds.width / 8) * 7)
								.background(
									RoundedRectangle(cornerRadius: 25.0, style: .continuous)
										.opacity(0.15)
								)
								.foregroundColor(.black)
						}
						
						Spacer()
						
					}
					.frame(width: UIScreen.main.bounds.width) // Set Width to prevent horisontal scrolling
				}
			}
		}.preferredColorScheme(.light) // Prevent Status bar from dissapearing into background
	}
}

//MARK: Extenstion of DetailView; Functions
extension DetailView {
	// Returns a or an depending on context to ensure grammatical consistency
	func aOrAn() -> String {
		if Variables().RCRelation[current]!.responseCodeType == "Informational" {
			return "an"
		} else {
			return "a"
		}
	}
	
	// Returns Background Colour Based On RCType
	func Background() -> UIColor {
		if Variables().RCRelation[current]!.responseCodeType == "Informational" {
			return UIColor(SettingsView().informationalColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Success" {
			// Green
			return UIColor(SettingsView().successColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Redirection" {
			// Blue
			return UIColor(SettingsView().redirectColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Client Error" {
			// Red
			return UIColor(SettingsView().clientErrorColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Server Error" {
			// Yellow
			return UIColor(SettingsView().serverErrorColor)
		} else {
			return .gray // Preventing Crash upon unexpected error
		}
	}
}

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView().environmentObject(ViewRouter())
    }
}
