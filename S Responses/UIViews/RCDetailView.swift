//
//  SwiftUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

import SwiftUI
import SwiftUIX

let current = Variables().RCC
let currentSTR: String = String(current)
let currentARR: [Int] = Array(arrayLiteral: current)
let currentCol: Color = Variables().RCColour[currentARR[0]]!

struct RCDetailView: View {
    
    var body: some View {
        
        ZStack {
            if currentARR[0] == 1 {
                Color.white
                    .ignoresSafeArea()
            } else if currentARR[0] == 2 {
                Color.green
                    .ignoresSafeArea()
            } else if currentARR[0] == 3 {
                Color.blue
                    .ignoresSafeArea()
            } else if currentARR[0] == 4 {
                Color.red
                    .ignoresSafeArea()
            } else if currentARR[0] == 5 {
                Color.yellow
                    .ignoresSafeArea()
            }
            
            VStack {
                Text(currentSTR)
                    .font(.custom("bahnschrift.ttf", size: 200))
                
                Text(Variables().RCRelation[current]?.responseCodeTitle ?? "Error - Please Contact Developers of HTTP/S Repsonses")
                    .font(.custom("bahnschrift.ttf", size: 30))
                    .bold()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RCDetailView()
    }
}
