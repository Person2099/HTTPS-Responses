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
		}
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
			return .white
		} else if Variables().RCRelation[current]!.responseCodeType == "Success" {
			// Green
			return UIColor(red: 88/255, green: 176/255, blue: 0/255, alpha: 1)
		} else if Variables().RCRelation[current]!.responseCodeType == "Redirection" {
			// Blue
			return UIColor(red: 114/255, green: 221/255, blue: 247/255, alpha: 1)
		} else if Variables().RCRelation[current]!.responseCodeType == "Client Error" {
			// Red
			return UIColor(red: 255/255, green: 51/255, blue: 51/255, alpha: 1)
		} else if Variables().RCRelation[current]!.responseCodeType == "Server Error" {
			// Yellow
			return UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1)
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
