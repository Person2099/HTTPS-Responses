//
//  HomeView.swift
//  S Responses
//
//  Created by Sebastian Keet on 17/8/21.
//

import SwiftUI
import SwiftUIX

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("HTTP/S Response Code Lookup")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Spacer()
                    
                Form {
                    Section(footer: Text("This is a temporary home screen")) {
                        NavigationLink(destination: SettingsView()) {
                            HStack {
                                Image(systemName: "gearshape")
                                Text("Settings")
                                    .bold()
                            }
                        }
                        NavigationLink(destination: RCListView()) {
                            HStack {
                                Image(systemName: "list.bullet.rectangle")
                                Text("List View")
                                    .bold()
                            }
                        }
                    }
                }
                Spacer()
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .environment(\.colorScheme, .light)
            
            HomeView()
                .environment(\.colorScheme, .dark)
        }
    }
}
