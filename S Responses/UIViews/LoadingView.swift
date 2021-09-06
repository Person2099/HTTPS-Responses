//
//  LoadingView.swift
//  S Responses
//
//  Created by Sebastian Keet on 30/8/21.
//

//MARK: Import Dependencies
import SwiftUI
import SwiftUIKit

//MARK: LoadingView Declaration
struct LoadingView: View {
	
	//MARK: Define Variables
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	@State private var isLoading = false
	
	//MARK: View
    var body: some View {
		ZStack { // ZStack allowing the background to be shown behind the general view
			Color(DetailView().Background()) // Background Colour
				.ignoresSafeArea() // Ignores Safe Area (Interactable) Boundaries filling the whole screen
			
			// "Loading" Label
			Text("Loading")
				.font(.system(.body, design: .rounded))
				.bold()
				.offset(x: 0, y: -25)
				.foregroundColor(.black)
			
			// Loading Bar
			RoundedRectangle(cornerRadius: 3)
				.stroke(Color(.systemGray5), lineWidth: 3)
				.frame(width: 250, height: 3)
			
			// Loading Sliding Pill
			RoundedRectangle(cornerRadius: 3)
				.stroke(Color(DetailView().Background()), lineWidth: 3)
				.frame(width: 30, height: 3)
				.offset(x: isLoading ? 110 : -110, y: 0)
				.animation(Animation.linear(duration: 1).repeatForever(autoreverses: true)) // Length is one second and pill bounces
		}
		.preferredColorScheme(.light) // Ensure the status bar doesn't dissapear into background
		.onAppear() { // Run the following when view appears
			self.isLoading = true
			loadAnimation()
		}
	}
}

//MARK: LoadingView Extension
// Extension used for functions
extension LoadingView {
	func loadAnimation() {
		DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0.5...1.0)) {
			withAnimation() {
				viewRouter.currentPage = .detail
			}
		}
	}
}

// Private extension used for defining loading bar and pill style
private extension LoadingView {
	var loadingStyle: CircularProgressBarStyle {
		var style = CircularProgressBarStyle.standard
		style.backgroundColor = .tertiaryLabel
		style.strokeColor = .systemBackground
		style.strokeWidth = 6
		style.progressColor = .label
		style.progressWidth = 15
		style.progressModifier = { $0.shadow(.standardToast).any() }
		return style
	}
}

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
			.environmentObject(ViewRouter())
    }
}
