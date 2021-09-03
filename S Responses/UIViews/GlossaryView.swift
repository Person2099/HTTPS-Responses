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
					.keyboardShortcut(.cancelAction)
				Spacer()
			}
			
			// Title
			Text("Glossary")
				.font(.largeTitle)
				.bold()
			
			// Concepts Defined
			List() {
				Group() {
					
					RFCDefinition() // What is RFC
										
					HTTPDefinition() // What is HTTP
										
					StatusCodesDefinition() // What are HTTP Status Codes
										
					HTTPVersion1_1SpecDefinition() // The HTTP1/1 Spec
										
					UniformResourceIdentifierDefinition() // URI Def
					
					HTTPHeaderFields() // HTTP Header Fields

				}
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
		Section() {
			DisclosureGroup("RFC (Request for Comments)") {
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
				
				Text("Request for Comments. (2021, August 18). In Wikipedia. https://en.wikipedia.org/wiki/Request_for_Comments")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
		}
		.padding()
	}
}

//MARK: HTTP
struct HTTPDefinition: View {
	var body: some View {
		Section() {
			DisclosureGroup("Hypertext Transfer Protocol (HTTP)") {
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
				
				Text("Hypertext Transfer Protocol. (2021, August 30). In Wikipedia. https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
			
		}
		.padding()
	}
}

//MARK: HTTP Status Codes
struct StatusCodesDefinition: View {
	var body: some View {
		Section() {
			DisclosureGroup("HTTP Status Codes") {
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
				
				Text("List of HTTP Status Codes. (2021, August 16). In Wikipedia. https://en.wikipedia.org/wiki/List_of_HTTP_status_codes")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
		}
		.padding()
	}
}

//MARK: HTTP1/1 Specification
struct HTTPVersion1_1SpecDefinition: View {
	var body: some View {
		Section() {
			DisclosureGroup("HTTP1/1 Specification") {
				Text("HTTP/1.1 is a revision of the original HTTP (HTTP/1.0). In HTTP/1.0 a separate connection to the same server is made for every resource request. HTTP/1.1 can reuse a connection multiple times to download images, scripts, stylesheets, etc after the page has been delivered. HTTP/1.1 communications therefore experience less latency as the establishment of TCP connections presents considerable overhead.")
					.font(.callout)
				HStack {
					Image(systemName: "book")
					Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")}, label: {
						Text("Read more on Wikipedia")
					})
				}
				.foregroundColor(.link)
				.font(.headline)
				
				Text("Hypertext Transfer Protocol. (2021, August 30). In Wikipedia. https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
		}
		.padding()
	}
}

//MARK: Uniform Resource Identifier (URI))
struct UniformResourceIdentifierDefinition: View {
	var body: some View {
		Section() {
			DisclosureGroup("Uniform Resource Identifier (URI)") {
				Text("A Uniform Resource Identifier (URI) is a unique sequence of characters that identifies a logical or physical resource used by web technologies. URIs may be used to identify anything, including real-world objects, such as people and places, concepts, or information resources such as web pages and books. Some URIs provide a means of locating and retrieving information resources on a network these an example of these are Uniform Resource Locators (URLs). Another example is the URI belonging to each file on your computer which allows your computer to find everything.")
					.font(.callout)
				HStack {
					Image(systemName: "book")
					Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/Uniform_Resource_Identifier")}, label: {
						Text("Read more on Wikipedia")
					})
				}
				.foregroundColor(.link)
				.font(.headline)
				
				Text("Uniform Resource Identifier. (2021, August 21). In Wikipedia. https://en.wikipedia.org/wiki/Uniform_Resource_Identifier")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
		}
		.padding()
	}
}

//MARK: HTTP Header Fields)
struct HTTPHeaderFields: View {
	let headerFields: [String] = []
	let responseFields: [String] = []
	
	var body: some View {
		Section() {
			DisclosureGroup("HTTP Header Fields") {
				Text("HTTP header fields are a list of linefeed-separated HTTP data being sent and received by both the client program and server on every HTTP request. These headers are usually invisible to the end-user and are only visible to the backend programs and people maintaining the internet system. They define how information sent/received through the connection are encoded (as in Accept-Encoding), the session verification and identification of the client (as in browser cookies, IP address, user-agent) or their anonymity thereof (VPN or proxy masking, user-agent spoofing), how the server should handle data (as in Do-Not-Track), the age of the document being downloaded, amongst others.")
					.font(.callout)
				
				HStack {
					Image(systemName: "book")
					Button(action: {GlossaryView().visit(url: "https://en.wikipedia.org/wiki/List_of_HTTP_header_fields")}, label: {
						Text("Read more on Wikipedia")
					})
				}
				.foregroundColor(.link)
				.font(.headline)
				
				Text("List of HTTP header fields. (2021, August 13). In Wikipedia. https://en.wikipedia.org/wiki/List_of_HTTP_header_fields")
					.font(.footnote, weight: .ultraLight)
			}
			.font(.title2, weight: .bold)
		}
		.padding()
	}
}
