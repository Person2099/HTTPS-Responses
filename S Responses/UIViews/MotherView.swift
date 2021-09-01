//
//  MotherView.swift
//  S Responses
//
//  Created by Sebastian Keet on 24/8/21.
//

//MARK: Import Dependencies
import SwiftUI


//MARK: MotherView Declaration
struct MotherView: View {
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	
	// Display page based on viewRouter variable
	var body: some View {
		switch viewRouter.currentPage {
		// Show Home View
		case .home:
			HomeView()
				.transition(.slide)
			
		// Show Settings View
		case .settings:
			SettingsView()
				.transition(.leadCrossDissolve)
		
		// Show List View
		case .list:
			ListView()
				.transition(.leadCrossDissolve)
			
		// Show Detail View
		case .detail:
			DetailView()
				.transition(.identity)
			
		// Show Glossary View
		case .glossary:
			GlossaryView()
				.transition(.leadCrossDissolve)
			
		// Show Loading View
		case .loading:
			LoadingView()
				.transition(.opacity)
		}
	}
}

// Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
