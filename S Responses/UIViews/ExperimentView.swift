//
//  SwiftUIView.swift
//  S Responses
//
//  Created by Sebastian Keet on 23/8/21.
//

//MARK: This is for testing and is not used in production

#if DEBUG // Prevents this file from building if not in debug mode.
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

/*
private func updateColours() {
	if UserDefaults.exists(key: "InfoAlpha") == false {
		informationalColor = Color(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1))
		successColor = Color(UIColor(red: 88/255, green: 176/255, blue: 0/255, alpha: 1))
		redirectColor = Color(UIColor(red: 114/255, green: 221/255, blue: 247/255, alpha: 1))
		clientErrorColor = Color(UIColor(red: 255/255, green: 51/255, blue: 51/255, alpha: 1))
		serverErrorColor = Color(UIColor(red: 255/255, green: 255/255, blue: 51/255, alpha: 1))
	}
	informationalColor = Color(getUIColour(type: .info))
	successColor = Color(getUIColour(type: .success))
	redirectColor = Color(getUIColour(type: .redirect))
	clientErrorColor = Color(getUIColour(type: .clientErr))
	serverErrorColor = Color(getUIColour(type: .serverErr))
}

// Return Values for ResponseRype Background
private func getColour(type: ResponseTypeEnum) -> [String: CGFloat] {
	var values = [String: CGFloat]()
	
	switch type {
	case .info:
		let alpha = CGFloat(UserDefaults.standard.float(forKey: "InfoAlpha"))
		let red = CGFloat(UserDefaults.standard.float(forKey: "InfoRed"))
		let green = CGFloat(UserDefaults.standard.float(forKey: "InfoGreen"))
		let blue = CGFloat(UserDefaults.standard.float(forKey: "InfoBlue"))
		
		values = ["red": red, "green": green, "blue": blue, "alpha": alpha]
		
	case .success:
		let alpha = CGFloat(UserDefaults.standard.float(forKey: "SuccessAlpha"))
		let red = CGFloat(UserDefaults.standard.float(forKey: "SuccessRed"))
		let green = CGFloat(UserDefaults.standard.float(forKey: "SuccessGreen"))
		let blue = CGFloat(UserDefaults.standard.float(forKey: "SuccessBlue"))
		
		values = ["red": red, "green": green, "blue": blue, "alpha": alpha]
		
	case .redirect:
		let alpha = CGFloat(UserDefaults.standard.float(forKey: "RedirectAlpha"))
		let red = CGFloat(UserDefaults.standard.float(forKey: "RedirectRed"))
		let green = CGFloat(UserDefaults.standard.float(forKey: "RedirectGreen"))
		let blue = CGFloat(UserDefaults.standard.float(forKey: "RedirectBlue"))
		
		values = ["red": red, "green": green, "blue": blue, "alpha": alpha]
		
	case .clientErr:
		let alpha = CGFloat(UserDefaults.standard.float(forKey: "ClientErrAlpha"))
		let red = CGFloat(UserDefaults.standard.float(forKey: "ClientErrRed"))
		let green = CGFloat(UserDefaults.standard.float(forKey: "ClientErrGreen"))
		let blue = CGFloat(UserDefaults.standard.float(forKey: "ClientErrBlue"))
		
		values = ["red": red, "green": green, "blue": blue, "alpha": alpha]
		
	case .serverErr:
		let alpha = CGFloat(UserDefaults.standard.float(forKey: "ServerErrAlpha"))
		let red = CGFloat(UserDefaults.standard.float(forKey: "ServerErrRed"))
		let green = CGFloat(UserDefaults.standard.float(forKey: "ServerErrGreen"))
		let blue = CGFloat(UserDefaults.standard.float(forKey: "ServerErrBlue"))
		
		values = ["red": red, "green": green, "blue": blue, "alpha": alpha]
	}
	
	return values
}

private func getUIColour(type: ResponseTypeEnum) -> UIColor {
	let values = getColour(type: type)
	let r = values["red"]!
	let g = values["green"]!
	let b = values["blue"]!
	let a = values["alpha"]!
	
	return UIColor(red: r, green: g, blue: b, alpha: a)
}

private func saveColour(type: ResponseTypeEnum) {
	switch type {
	case .info:
		let rgba = informationalColor?.toUIColor()?.rgba
		UserDefaults.standard.set(rgba?.alpha, forKey: "InfoAlpha")
		UserDefaults.standard.set(rgba?.red, forKey: "InfoRed")
		UserDefaults.standard.set(rgba?.green, forKey: "InfoGreen")
		UserDefaults.standard.set(rgba?.blue, forKey: "InfoBlue")
		
	case .success:
		let rgba = successColor?.toUIColor()?.rgba
		UserDefaults.standard.set(rgba?.alpha, forKey: "SuccessAlpha")
		UserDefaults.standard.set(rgba?.red, forKey: "SuccessRed")
		UserDefaults.standard.set(rgba?.green, forKey: "SuccessGreen")
		UserDefaults.standard.set(rgba?.blue, forKey: "SuccessBlue")
		
	case .redirect:
		let rgba = redirectColor?.toUIColor()?.rgba
		UserDefaults.standard.set(rgba?.alpha, forKey: "RedirectAlpha")
		UserDefaults.standard.set(rgba?.red, forKey: "RedirectRed")
		UserDefaults.standard.set(rgba?.green, forKey: "RedirectGreen")
		UserDefaults.standard.set(rgba?.blue, forKey: "RedirectBlue")
		
	case .clientErr:
		let rgba = clientErrorColor?.toUIColor()?.rgba
		UserDefaults.standard.set(rgba?.alpha, forKey: "ClientErrAlpha")
		UserDefaults.standard.set(rgba?.red, forKey: "ClientErrRed")
		UserDefaults.standard.set(rgba?.green, forKey: "ClientErrGreen")
		UserDefaults.standard.set(rgba?.blue, forKey: "ClientErrBlue")
		
	case .serverErr:
		let rgba = serverErrorColor?.toUIColor()?.rgba
		UserDefaults.standard.set(rgba?.alpha, forKey: "ServerErrAlpha")
		UserDefaults.standard.set(rgba?.red, forKey: "ServerErrRed")
		UserDefaults.standard.set(rgba?.green, forKey: "ServerErrGreen")
		UserDefaults.standard.set(rgba?.blue, forKey: "ServerErrBlue")
	}
	
}
*/

struct Experiment_Previews: PreviewProvider {
    static var previews: some View {
        Experiment()
    }
}
#endif
