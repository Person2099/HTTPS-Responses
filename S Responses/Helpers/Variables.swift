//
//  Variables.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

//MARK: Import Dependencies
import Foundation
import UIKit
import SwiftUI
import OSLog

// Define Global Logger For Application
// This logger is used instead of print() to allow the app to log events.
// Logged events can be accesed via the device log (unlike print())
let logger = Logger()

//MARK: Define responseDec and responseType Structures
struct responseDec: Hashable, Identifiable {
    let responseCode: Int
    let responseCodeTitle: String
    let simplifiedDef: String
    let responseCodeType: String
    let detailedDef: String
	
	// Generate Unique ID to conform to Identifiable
    let id = UUID()
}
struct responseType: Identifiable {
    let name: String
    let responses: [responseDec]
	
	// Generate Unique ID to conform to Identifiable
    let id = UUID()
}

//MARK: Variables Class Declaration (Used to store some global variables)
class Variables {
	// list of all response codes as integers
    let RCList: [Int] = [100, 101, 102, 200, 201, 202, 203, 204, 205, 206, 207, 208, 226, 300, 301, 302, 303, 304, 305, 306, 307, 308, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 420, 422, 423, 424, 425, 426, 428, 429, 431, 444, 449, 450, 451, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 598, 599]
    
	// List of all response codes as strings #DEPRECIATED#
    //let RCListString: [String] = ["100", "101", "102", "200", "201", "202", "203", "204", "205", "206", "207", "208", "226", "300", "301", "302", "303", "304", "305", "306", "307", "308", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "420", "422", "423", "424", "425", "426", "428", "429", "431", "444", "449", "450", "451", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "598", "599"]
    
	// Dictionary Relating Response Code to it's info
	// 000 is NOT a http/s response code but is used for error handling
    let RCRelation: Dictionary = [000: ResponseCodes().res000, 100: ResponseCodes().res100, 101: ResponseCodes().res101, 102: ResponseCodes().res102, 200: ResponseCodes().res200, 201: ResponseCodes().res201, 202: ResponseCodes().res202, 203: ResponseCodes().res203, 204: ResponseCodes().res204, 205: ResponseCodes().res205, 206: ResponseCodes().res206, 207: ResponseCodes().res207, 208: ResponseCodes().res208, 226: ResponseCodes().res226, 300: ResponseCodes().res300, 301: ResponseCodes().res301, 302: ResponseCodes().res302, 303: ResponseCodes().res303, 304: ResponseCodes().res304, 305: ResponseCodes().res305, 306: ResponseCodes().res306, 307: ResponseCodes().res307, 308: ResponseCodes().res308, 400: ResponseCodes().res400, 401: ResponseCodes().res401, 402: ResponseCodes().res402, 403: ResponseCodes().res403, 404: ResponseCodes().res404, 405: ResponseCodes().res405, 406: ResponseCodes().res406, 407: ResponseCodes().res407, 408: ResponseCodes().res408, 409: ResponseCodes().res409, 410: ResponseCodes().res410, 411: ResponseCodes().res411, 412: ResponseCodes().res412, 413: ResponseCodes().res413, 414: ResponseCodes().res414, 415: ResponseCodes().res415, 416: ResponseCodes().res416, 417: ResponseCodes().res417, 418: ResponseCodes().res418, 420: ResponseCodes().res420, 422: ResponseCodes().res422, 423: ResponseCodes().res423, 424: ResponseCodes().res424, 425: ResponseCodes().res425, 426: ResponseCodes().res426, 428: ResponseCodes().res428, 429: ResponseCodes().res429, 431: ResponseCodes().res431, 444: ResponseCodes().res444, 449: ResponseCodes().res449, 450: ResponseCodes().res450, 451: ResponseCodes().res451, 499: ResponseCodes().res499, 500: ResponseCodes().res500, 501: ResponseCodes().res501, 502: ResponseCodes().res502, 503: ResponseCodes().res503, 504: ResponseCodes().res504, 505: ResponseCodes().res505, 506: ResponseCodes().res506, 507: ResponseCodes().res507, 508: ResponseCodes().res508, 509: ResponseCodes().res509, 510: ResponseCodes().res510, 511: ResponseCodes().res511, 598: ResponseCodes().res598, 599: ResponseCodes().res599]
    
    // Dictionary relating the first number of each status to it's type
    let RCType: Dictionary = [1: "Informational", 2: "Success", 3: "Redirection", 4: "Client Error", 5: "Server Error"]
	
	// Dictionary relating the first number if each status to a colour #DEPRECIATED#
    //let RCColour: [Int: Color] = [1: .white, 2: .green, 3: .blue, 4: .red, 5: .yellow]
    
    //var RCC: Int = 100 // Current Response Code #DEPRECIATED#
}
