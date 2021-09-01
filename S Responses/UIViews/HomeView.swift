//
//  HomeView.swift
//  S Responses
//
//  Created by Sebastian Keet on 17/8/21.
//

//MARK: Import Dependencies
import SwiftUI
import SwiftUIKit

//MARK: HomeView Declaration
// This is the page that is shown after the app finishes launching
struct HomeView: View {
	
	//MARK: Define Variables
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	
	// Private variables
	// Private variables are only avaliable in the current structure (HomeView)
	@State private var isLoading = false
	@State private var search: String = ""
	@StateObject private var context = AlertContext()
	@State private var showAlert = false
	@State private var alertTitle = ""
	@State private var alertBody = ""
	
	// Other Variables
	@State var item = 000
	let mainViewDispatchQueue = DispatchQueue(label: "mainViewDispatchQueue")
	
	
	//MARK: View
	// This section defines the UI of the HomeView
    var body: some View {
		// A ZStack allowing the background to be shown behind the general view
		ZStack {
			LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 216/255, green: 212/255, blue: 212/255, alpha: 1)), Color(.systemBlue)]), startPoint: .topLeading, endPoint: .bottomTrailing)
				.ignoresSafeArea()
			
			// A Vertial Stack Allowing elements to be shown on top of eachother
			VStack {
				// Title
				Text("HTTP/S Response Code Lookup")
					.fontWeight(.heavy)
					.font(.largeTitle)
					.multilineTextAlignment(.center)
				
				// VStack including Buttons and Search bar
				VStack {
					
					// Search Bar
					HStack {
						Image(systemName: "magnifyingglass")
						TextField("Response Code", text: $search)
						.keyboardType(.numberPad)
						
						Button("Search") {
							// Upon search button pressed hide keyboard and validate entry using functions below
							hideKeyboard()
							validate(submitted: search)
						}
					}
					.modifier(customViewModifier(roundedCorners: 6, startColor: .green, endColor: .blue, textColor: .white)) // Search Bar Colour
					.frame(width: (UIScreen.main.bounds.width / 4) * 2.75) // Search Bar Size (Width) relative to screen
					
					// VStack of buttons
					VStack {
						// Button presenting ListView
						Button(action: {
							// Show ListView with animation (animation defined in MotherView.swift)
							withAnimation {
								viewRouter.currentPage = .list
							}
						}) {
							// UI Of Button
							HStack {
								Text("Response List")
									.bold()
								Image(systemName: "list.bullet")
							}
						}.buttonStyle(DarkButtonStyle()) // Style Button (Defined Below)
						
						// Button presenting SettingsView
						Button(action: {
							// Show SettingsView with animation (animation defined in MotherView.swift)
							withAnimation {
								viewRouter.currentPage = .settings
							}
						}) {
							// UI Of Button
							HStack {
								Text("Settings")
									.bold()
								Image(systemName: "gear")
							}
						}.buttonStyle(DarkButtonStyle()) // Style Button (Defined Below)
						
						// Button presenting GlossaryView
						Button(action: {
							// Show GlossaryView with animation (animation defined in MotherView.swift)
							withAnimation {
								viewRouter.currentPage = .glossary
							}
						}) {
							// UI Of Button
							HStack {
								Text("Glossary")
									.bold()
								Image(systemName: "character.book.closed")
							}
						}.buttonStyle(DarkButtonStyle())
					}
				}
			}.padding()
			
			// AlertView For showing popup alerts in validation stage
			.alert(isPresented: $showAlert) {
				Alert(
					title: Text(alertTitle),
					message: Text(alertBody)
				)
			}
		}
    }
}

//MARK: Private Extension of HomeView
private extension HomeView {
	// Function to show alert; requires title and body for alert
	func alert(requestedTitle: String, requestedBody: String) {
		alertTitle = requestedTitle
		alertBody = requestedBody
		
		showAlert = true
	}
}

//MARK: Extenstion of HomeView; Functions
extension HomeView {
	// Validate Function
	func validate(submitted: String) {
		// Invalid if No Input
		if submitted.count == 0 {
			//No entry: Handle Error
			isLoading.toggle()
			return // No UI Change. Allows Search button to double as dismiss button for keyboard when containing no text.
		}
		
		// Invalid if not three numbers in length
		if submitted.count != 3 {
			// Not 3 Digits: Handle Error
			alert(requestedTitle: "Oh No!", requestedBody: "It looks like the response code you input was an incorrect length\nIt should be three (3) numbers long")
			search = ""
			return // Show alert and return
		}
		
		// Ensure input is integer (convert from string)
		guard let searchInt = Int (submitted) else {
			// Conversion failed: Handle Error
			alert(requestedTitle: "Error", requestedBody: "Unfortunately an error has occured on our end 😔\nPlease contact the development team if this error persists")
			search = ""
			return // Show alert and return
		}
		
		// Invalidate if search is not in our databases
		if Variables().RCList.contains(searchInt) == false {
			// Not in database: Handle Error
			alert(requestedTitle: "Not Found", requestedBody: "Unfortunately that response code is not in our database. If you think this was a mistake please report this to us via the settings page.")
			search = ""
			return // Show alert and return
		}
		
		// Continue to detailView through loadingView if valid entry
		// Forward entry to detailView to prepare Information
		forwardID(id: searchInt)
		withAnimation() {
			viewRouter.currentPage = .loading
		}
	}
	
	// Forwards search as id
	func forwardID(id: Int) {
		current = id
	}
	
	// Hides Keyboard
	func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}

//MARK: Define Search Bar
struct customViewModifier: ViewModifier {
	// Customisable Variables
	var roundedCorners: CGFloat
	var startColor: Color
	var endColor: Color
	var textColor: Color
	
	// Appearance of Search Bar
	func body(content: Content) -> some View {
		content
			.padding()
			.background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
			.cornerRadius(roundedCorners)
			.padding(3)
			.foregroundColor(textColor) // Colour
			.overlay(RoundedRectangle(cornerRadius: roundedCorners)
						.stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5)) // Shape
			.font(.custom("Open Sans", size: 18)) // Font
			.shadow(radius: 10) // Add shadow
	}
}

//MARK: Button Style
struct DarkButtonStyle: ButtonStyle {
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.foregroundColor(.systemBackground) // Colour for foreground
			.padding()
			.background(.label) // Colour for background
			.cornerRadius(15.0) // Rounded Corners
			.scaleEffect(configuration.isPressed ? 1.3 : 1.0) // Effect When Pressed
	}
}

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
		// Two Previews (Dark Mode and Light Mode)
        Group {
			HomeView()
				.environmentObject(ViewRouter())
                .environment(\.colorScheme, .light)
            
            HomeView()
				.environmentObject(ViewRouter())
                .environment(\.colorScheme, .dark)
        }
    }
}
