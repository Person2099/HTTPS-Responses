//
//  SwiftUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 23/8/21.
//

import SwiftUI

struct Experiment: View {
	let text = Variables().RCRelation[100]!.simplifiedDef
	
	
	var body: some View {
		GeometryReader { theView in
			ZStack {
				Color(.red)
					.ignoresSafeArea()
				Text(text)
					.padding()
					.frame(width: (theView.size.width / 8) * 7)
					.background(
						RoundedRectangle(cornerRadius: 25.0, style: .continuous)
							.opacity(0.15)
					)
			}
		}
	}
}

struct Experiment_Previews: PreviewProvider {
    static var previews: some View {
        Experiment()
    }
}
