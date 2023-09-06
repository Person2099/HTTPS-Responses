//
//  MainView.swift
//  HTTPS Responses
//
//  Created by Sebastian Keet on 6/9/2023.
//

import SwiftUI

struct MainView: View {
    @State var searchText: String = "404"
    @State var showGlossarySheet: Bool = false
    @State var showSettingsSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("HTTP/S Response Code Lookup")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                List {
                    ForEach(ResponsesEnum.allCases) { response in
                        NavigationLink(destination: SubView(response: response)) {
                            HStack {
                                Text(response.responseCode)
                                    .foregroundStyle(response.responseCodeColour)
                                    .fontWeight(.black)
                                Spacer()
                                Text(response.responseCodeTitle)
                            }
                                .bold()
                        }
                    }
                }.listStyle(.plain)
            }
            .toolbar(content: {
                ToolbarItem(placement: .secondaryAction) {
                    Button(action: { showGlossarySheet.toggle() }, label: {
                        HStack {
                            Image(systemName: "book.circle")
                            Text("Glossary")
                        }.font(.caption)
                            .bold()
                    })
                }
                ToolbarItem(placement: .secondaryAction) {
                    Button(action: { showSettingsSheet.toggle() }, label: {
                        HStack {
                            Image(systemName: "gear")
                            Text("Settings")
                        }.font(.caption)
                            .bold()
                    })
                }
            })
            .sheet(isPresented: $showGlossarySheet, content: {
                NavigationStack {
                    GlossaryView()
                }
            })
            .sheet(isPresented: $showSettingsSheet, content: {
                NavigationStack {
                    SettingsView()
                }
            })
        }
    }
}

#Preview {
    MainView()
}
