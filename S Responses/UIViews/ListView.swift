//
//  NextUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

import SwiftUI

struct ListView: View {
	@EnvironmentObject var viewRouter: ViewRouter
    @State private var singleSelection: UUID?
    
	var body: some View {
		VStack {
			HStack {
				Button(action: {
					withAnimation() {
						viewRouter.currentPage = .home
					}
				}, label: {
					HomeButtonContent()
				})
				
				Spacer()
			}
			
			Text("List")
				.font(.largeTitle)
				.bold()
			
			List(selection: $singleSelection) {
				ForEach(responseCodes) { type in
					Section(header: Text("\(type.name) Response Codes")) {
						ForEach(type.responses) { response in
							Text("\(response.responseCode): \(response.responseCodeTitle)")
						}
					}
				}
			}
			.listStyle(InsetGroupedListStyle())
			.environment(\.horizontalSizeClass, .regular)
		}
		
	}
}


struct NextUIView_Previews: PreviewProvider {
    static var previews: some View {
		ListView().environmentObject(ViewRouter())
    }
}
