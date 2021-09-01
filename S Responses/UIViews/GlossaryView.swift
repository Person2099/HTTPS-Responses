//
//  GlossaryView.swift
//  S Responses
//
//  Created by Sebastian Keet on 27/8/21.
//

//MARK: Import Dependencies
import SwiftUI
import SwiftUIKit

//MARK: GlossaryView Declaration
struct GlossaryView: View {
	
	//MARK: Define variables
	// Connect ViewRouter as viewRouter
	@EnvironmentObject var viewRouter: ViewRouter
	@StateObject private var sheetContext = SheetContext()
	
	//MARK: View
	var body: some View {
		VStack {
			
			// Return Home Button
			HStack {
				Button(action: { withAnimation { viewRouter.currentPage = .home } }) { HomeButtonContent() }
				Spacer()
			}
			
			// Title
			Text("Glossary")
				.font(.largeTitle)
				.bold()
			
			// Concepts Defined
			Form() {
				RFCDefinition() // What is RFC
					
				HTTPDefinition() // What is HTTP
					
				StatusCodesDefinition() // What are HTTP Status Codes
				
			}
		}
	}
}

//MARK: GlossaryView Extension
// fileprivate tag only encapsulated functions to be accessed from this file
fileprivate extension GlossaryView {
	
	// Opens input URL in web browser
	func visit(url: String) {
		if let url = URL(string: url) {
			UIApplication.shared.open(url)
		} else {
			// Handle Errors
			logger.critical("Glossary URL Did Not Open (URL: \(url)")
		}
	}
}

//MARK: Preview Provider
// The preview provider is only used in development and indicates what to show while using preview in this document
struct GlossaryView_Previews: PreviewProvider {
    static var previews: some View {
		GlossaryView().environmentObject(ViewRouter())
    }
}

//MARK: Concept Definitions
// The following are the views for concepts

//MARK: RFC
struct RFCDefinition: View {
	var body: some View {
		Section(footer: Text("Request for Comments. (2021, August 18). In Wikipedia. https://en.wikipedia.org/wiki/Request_for_Comments")) {
			Text("RFC (Request for Comments)")
				.font(.title2)
				.bold()
			Text("A Request for Comments is a uniquely numbered document that has been published by one of a limited group of authoritive bodies, most prominently the Internet Engineering Task Force (IETF) as well as the principal technical development and standards-setting bodies for the Internet. An RFC is a highly detailed workpiece documented and published by individuals or groups of engineers and computer scientists and describes new or updated internet standards. It is submitted either for peer review or to convey new concepts, information, or occasionally engineering humor. The IETF adopts some of the proposals published as RFCs as Internet Standards meaning they are used throughout the world wide web.")
				.font(.callout)
			HStack {
				Image(systemName: "book")
				Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/Request_for_Comments")}, label: {
					Text("Read more on Wikipedia")
				})
			}
			.foregroundColor(.link)
			.font(.headline)
			
			HStack {
				Image(systemName: "globe")
				Button(action: {GlossaryView().visit(url: "https://www.rfc-editor.org/retrieve/")}, label: {
					Text("RFC Database")
				})
			}
			.foregroundColor(.link)
			.font(.headline)
		}
	}
}

//MARK: HTTP
struct HTTPDefinition: View {
	var body: some View {
		Section(footer: Text("Hypertext Transfer Protocol. (2021, August 30). In Wikipedia. https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")) {
			Text("Hypertext Transfer Protocol (HTTP)")
				.font(.title2)
				.bold()
			Text("The Hypertext Transfer Protocol (HTTP) is an application layer protocol used to distribute interactive media. HTTP is the foundation of data communication for the World Wide Web. Development of HTTP was initiated by Tim Berners-Lee at CERN in 1989. Development of early HTTP Requests for Comments (RFCs) was a coordinated effort by the Internet Engineering Task Force (IETF) and the World Wide Web Consortium (W3C), with work later moving to the IETF. HTTP functions as a request–response protocol in the client–server computing model. A web browser, for example, may be the client and an application running on a computer hosting a website may be the server. The client submits an HTTP request message to the server. The server, which provides resources such as HTML files and other content, or performs other functions on behalf of the client, returns a response message to the client. The response contains completion status, information about the request and may also contain requested content in its message body.")
				.font(.callout)
			HStack {
				Image(systemName: "book")
				Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")}, label: {
					Text("Read more on Wikipedia")
				})
			}
			.foregroundColor(.link)
			.font(.headline)
		}
	}
}

//MARK: HTTP Status Codes
struct StatusCodesDefinition: View {
	var body: some View {
		Section(footer: Text("List of HTTP Status Codes. (2021, August 16). In Wikipedia. https://en.wikipedia.org/wiki/List_of_HTTP_status_codes")) {
			Text("HTTP Status Codes")
				.font(.title2)
				.bold()
			Text("Status codes are issued by a server in response to a client's request made to the server. It includes codes from IETF Request for Comments (RFCs), other specifications, and some additional codes used in some common applications of the HTTP. The first digit of the status code specifies one of five standard classes of responses. The message phrases shown are typical, but any human-readable alternative may be provided. Unless otherwise stated, the status code is part of the HTTP/1.1 standard (RFC 7231).\nThe Internet Assigned Numbers Authority (IANA) maintains the official registry of HTTP status codes.")
				.font(.callout)
			HStack {
				Image(systemName: "book")
				Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")}, label: {
					Text("Read more on Wikipedia")
				})
			}
			.foregroundColor(.link)
			.font(.headline)
			
			HStack {
				Image(systemName: "globe")
				Button(action: {GlossaryView().visit(url: "https://datatracker.ietf.org/doc/html/rfc7231#section-6")}, label: {
					Text("RFC7231 HTTP/1.1 - Section 6, Response Status Codes")
				})
			}
			.foregroundColor(.link)
			.font(.headline)
		}
	}
}

