//
//  MotherView.swift
//  S Responses
//
//  Created by Sebastian Keet on 24/8/21.
//

import SwiftUI

struct MotherView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	
	var body: some View {
		switch viewRouter.currentPage {
		case .home:
			HomeView()
				.transition(.slide)
		case .settings:
			SettingsView()
				.transition(.leadCrossDissolve)
		case .list:
			ListView()
				.transition(.leadCrossDissolve)
		case .detail:
			DetailView()
				.transition(.identity)
		case .glossary:
			GlossaryView()
				.transition(.leadCrossDissolve)
		case .loading:
			LoadingView()
				.transition(.opacity)
		}
	}
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
