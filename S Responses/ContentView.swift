//
//  ContentView.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("HTTP/S Response Code Lookup")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                
                NavigationLink(destination: RCDetailView()) {
                    Text("To Search View")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 30.0, style: .continuous)
                                .stroke(Color.green, lineWidth: 5)
                        )
                        .padding()
                }
                NavigationLink(destination: RCDetailView()) {
                    Text("To List View")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 30.0, style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle(lineWidth: 5))
                        )
                }
                padding()
                padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}

struct RCDetailView: View {
    var body: some View {
        Text("This is the RCDetail view")
    }
}

struct RCListView: View {
    var body: some View {
        Text("This is the List View")
    }
}
