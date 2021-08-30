//
//  SwiftUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 13/8/21.
//

import SwiftUI
import SwiftUIX
import SwiftUIKit

var current: Int = 0

struct DetailView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	
	var body: some View {
		ZStack {
			Color(Background())
				.ignoresSafeArea()
			
			VStack {
				HStack {
					Button(action: {
						withAnimation {
							viewRouter.currentPage = .home
						}
					}) {
						HomeButtonContent()
						
					}
					Spacer()
				}
				ScrollView {
					VStack {
						VStack {
							Text(String(current))
								.font(.custom("bahnschrift.ttf", size: 200))
								.foregroundColor(.black)
							Text(Variables().RCRelation[current]?.responseCodeTitle ?? "Error - Please Contact Developers of HTTP/S Repsonses")
								.font(.custom("bahnschrift.ttf", size: 30))
								.bold()
								.padding()
								.foregroundColor(.black)
						}
						
						VStack {
							Text("This is \(aOrAn()) \(Variables().RCRelation[current]!.responseCodeType) response code\n\n\(Variables().RCRelation[current]?.simplifiedDef ?? "AN ERROR HAS OCCURED PLEASE CONTACT THE HTTP/S LOOKUP DEVELOPMENT TEAM")")
								.padding()
								.frame(width: (UIScreen.main.bounds.width / 8) * 7)
								.background(
									RoundedRectangle(cornerRadius: 25.0, style: .continuous)
										.opacity(0.15)
								)
								.foregroundColor(.black)
							
							
							
							Text(Variables().RCRelation[current]?.detailedDef ?? "AN ERROR HAS OCCURED PLEASE CONTACT THE HTTP/S LOOKUP DEVELOPMENT TEAM")
								.padding()
								.frame(width: (UIScreen.main.bounds.width / 8) * 7)
								.background(
									RoundedRectangle(cornerRadius: 25.0, style: .continuous)
										.opacity(0.15)
								)
								.foregroundColor(.black)
						}
						
						Spacer()
						
					}
					.frame(width: UIScreen.main.bounds.width)
				}
			}
		}.preferredColorScheme(.light)
	}
}

extension DetailView {
	func aOrAn() -> String {
		if Variables().RCRelation[current]!.responseCodeType == "Informational" {
			return "an"
		} else {
			return "a"
		}
	}
	
	func Background() -> UIColor {
		if Variables().RCRelation[current]!.responseCodeType == "Informational" {
			return UIColor(SettingsView().informationalColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Success" {
			// Green
			return UIColor(SettingsView().successColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Redirection" {
			// Blue
			return UIColor(SettingsView().redirectColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Client Error" {
			// Red
			return UIColor(SettingsView().clientErrorColor)
		} else if Variables().RCRelation[current]!.responseCodeType == "Server Error" {
			// Yellow
			return UIColor(SettingsView().serverErrorColor)
		} else {
			return .gray
		}
	}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView().environmentObject(ViewRouter())
    }
}
