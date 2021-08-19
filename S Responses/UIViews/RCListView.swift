//
//  NextUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

import SwiftUI

struct RCListView: View {
    @State private var singleSelection: UUID?
    
    var body: some View {
        NavigationView {
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
            .navigationTitle("Response Codes")
        }
    }
}

struct NextUIView_Previews: PreviewProvider {
    static var previews: some View {
        RCListView()
    }
}
