//
//  LoadingView.swift
//  S Responses
//
//  Created by Sebastian Keet on 30/8/21.
//

import SwiftUI
import SwiftUIKit

struct LoadingView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	@State private var isLoading = false
	
    var body: some View {
		ZStack {
			Color(DetailView().Background())
				.ignoresSafeArea()
			
			Text("Loading")
				.font(.system(.body, design: .rounded))
				.bold()
				.offset(x: 0, y: -25)
				.foregroundColor(.black)
			
			RoundedRectangle(cornerRadius: 3)
				.stroke(Color(.systemGray5), lineWidth: 3)
				.frame(width: 250, height: 3)
			
			RoundedRectangle(cornerRadius: 3)
				.stroke(Color(DetailView().Background()), lineWidth: 3)
				.frame(width: 30, height: 3)
				.offset(x: isLoading ? 110 : -110, y: 0)
				.animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
		}
		.preferredColorScheme(.light)
		.onAppear() {
			self.isLoading = true
			loadAnimation()
		}
	}
}

extension LoadingView {
	func loadAnimation() {
		DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 1.0...1.5)) {
			withAnimation() {
				viewRouter.currentPage = .detail
			}
		}
	}
}

private extension LoadingView {
	
	var loadingStyle: CircularProgressBarStyle {
		var style = CircularProgressBarStyle.standard
		style.backgroundColor = .tertiaryLabel
		style.strokeColor = .systemBackground
		style.strokeWidth = 6
		style.progressColor = .label
		style.progressWidth = 15
		style.progressModifier = { $0.shadow(.standardToast).any() }
		return style
	}
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
			.environmentObject(ViewRouter())
    }
}
