//
//  NextUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

//MARK: Import Dependencies
import SwiftUI

//MARK: ListView Declaration
struct ListView: View {
	
	//MARK: Define variables
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
    @State private var singleSelection: UUID?
    
	//MARK: View
	var body: some View {
		VStack {
			// Return to HomeView Button
			HStack {
				Button(action: {
					withAnimation() {
						viewRouter.currentPage = .home
					}
				}, label: {
					HomeButtonContent()
				})
				.keyboardShortcut(.cancelAction)
				
				Spacer()
			}
			
			// Title
			Text("List")
				.font(.largeTitle)
				.bold()
			
			// List
			// List updates from values input in ResponseCodeDetails().responseCodes based on identifiable structures responseDec and responseType in Variables()
			List(selection: $singleSelection) {
				ForEach(responseCodes) { type in
					Section(header: Text("\(type.name) Response Codes")) {
						ForEach(type.responses) { response in
							Text("\(response.responseCode): \(response.responseCodeTitle)")
						}
					}
				}
			}
			.listStyle(InsetGroupedListStyle()) //Style List Rounded Edges
			.environment(\.horizontalSizeClass, .regular)
		}
		
	}
}

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct NextUIView_Previews: PreviewProvider {
    static var previews: some View {
		ListView().environmentObject(ViewRouter())
    }
}
