//
//  SubView.swift
//  HTTPS Responses
//
//  Created by Sebastian Keet on 6/9/2023.
//

import SwiftUI

struct SubView: View {
    let response: ResponsesEnum
    
    var body: some View {
        VStack {
            HStack {
                Text(response.responseCodeTitle)
                    .font(.title2.bold())
                    .padding([.leading, .bottom])
                Spacer()
            }

            HStack {
                Text(response.responseCodeType)
                    .bold()
                Spacer()
                Text("This is \(response.responseCodeTypeGramaticalAnA) \(response.responseCodeType) response type")
                    .font(.footnote)
            }
            .padding()
            .background(response.responseCodeColour.opacity(0.25))
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .padding(.horizontal)
            
            ScrollView {
                Text(response.simplifiedDef)
                    .padding()
                    .fontWeight(.medium)
                    
                
                Text(response.detailedDef)
                    .padding()
                    .font(.subheadline)
            }
            
        }.navigationTitle(response.responseCode)
    }
}

#Preview {
    NavigationStack {
        SubView(response: .r100)
    }
}
