//
//  HomeView.swift
//  S Responses
//
//  Created by Sebastian Keet on 17/8/21.
//

import SwiftUI
import SwiftUIKit

struct HomeView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	@State private var search: String = ""
	@StateObject private var context = AlertContext()
	@State private var showAlert = false
	@State private var alertTitle = ""
	@State private var alertBody = ""
	@State var item = 000
	
    var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 216/255, green: 212/255, blue: 212/255, alpha: 1)), Color(.blue)]), startPoint: .topLeading, endPoint: .bottomTrailing)
				.ignoresSafeArea()
			VStack {
				Text("HTTP/S Response Code Lookup")
					.fontWeight(.heavy)
					.font(.largeTitle)
					.multilineTextAlignment(.center)
				
				VStack {
					HStack {
						Image(systemName: "magnifyingglass")
						TextField("Response Code", text: $search)
						.keyboardType(.numberPad)
						
						Button("Search") {
							hideKeyboard()
							validate(submitted: search)
						}
					}.modifier(customViewModifier(roundedCorners: 6, startColor: .green, endColor: .blue, textColor: .white))
					.frame(width: (UIScreen.main.bounds.width / 4) * 2.75)
					
					VStack {
						Button(action: {
							withAnimation {
								viewRouter.currentPage = .list
							}
						}) {
							HStack {
								Text("Response List")
									.bold()
								Image(systemName: "list.bullet")
							}
						}.buttonStyle(DarkButtonStyle())
						
						Button(action: {
							withAnimation {
								viewRouter.currentPage = .settings
							}
						}) {
							HStack {
								Text("Settings")
									.bold()
								Image(systemName: "gear")
							}
						}.buttonStyle(DarkButtonStyle())
						
						Button(action: {
							withAnimation {
								viewRouter.currentPage = .settings
							}
						}) {
							HStack {
								Text("Glossary")
									.bold()
								Image(systemName: "character.book.closed")
							}
						}.buttonStyle(DarkButtonStyle())
					}
				}
			}.padding()
			.alert(isPresented: $showAlert) {
				Alert(
					title: Text(alertTitle),
					message: Text(alertBody)
				)
			}
		}
    }
}

private extension HomeView {
	func alert(requestedTitle: String, requestedBody: String) {
		alertTitle = requestedTitle
		alertBody = requestedBody
		
		showAlert = true
	}
}

extension HomeView {
	func validate(submitted: String) {
		if submitted.count == 0 {
			//No entry: Handle error
			return
		}
		
		if submitted.count != 3 {
			// Not 3 Digits: Handle Error
			alert(requestedTitle: "Oh No!", requestedBody: "It looks like the response code you input was an incorrect length\nIt should be three (3) numbers long")
			search = ""
			return
		}
		
		guard let searchInt = Int (submitted) else {
			// Conversion failed: Handle Error
			alert(requestedTitle: "Error", requestedBody: "Unfortunately an error has occured on our end 😔\nPlease contact the development team if this error persists")
			search = ""
			return
		}
		
		if Variables().RCList.contains(searchInt) == false {
			// Not in database: Handle Error
			alert(requestedTitle: "Not Found", requestedBody: "Unfortunately that response code is not in our database. If you think this was a mistake please report this to us via the settings page.")
			search = ""
			return
		}
		
		forwardID(id: searchInt)
		withAnimation() {
			viewRouter.currentPage = .detail
		}
	}
	
	func forwardID(id: Int) {
		current = id
	}
	
	func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}

struct customViewModifier: ViewModifier {
	var roundedCorners: CGFloat
	var startColor: Color
	var endColor: Color
	var textColor: Color
	
	func body(content: Content) -> some View {
		content
			.padding()
			.background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
			.cornerRadius(roundedCorners)
			.padding(3)
			.foregroundColor(textColor)
			.overlay(RoundedRectangle(cornerRadius: roundedCorners)
						.stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
			.font(.custom("Open Sans", size: 18))
			
			.shadow(radius: 10)
	}
}
struct DarkButtonStyle: ButtonStyle {
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.foregroundColor(.systemBackground)
			.padding()
			.background(.label)
			.cornerRadius(15.0)
			.scaleEffect(configuration.isPressed ? 1.3 : 1.0)
	}
}

//MARK: KEEP THESE
//.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
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
