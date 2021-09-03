//
//  ResponseCodeDetails.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

//MARK: Import Dependencies
import Foundation
import SwiftUI

// Define All Response Codes
// This is where listView refers to for Titles and Response Codes
let responseCodes: [responseType] = [
	//MARK: 100
	responseType(name: "Informational", responses: [
		responseDec(responseCode: 100,
					responseCodeTitle: "Continue",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Informational",
					detailedDef: "The client SHOULD continue with its request. This interim response is used to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed."),
		responseDec(responseCode: 101,
					responseCodeTitle: "Switching Protocols",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Informational",
					detailedDef: "placeholder"),
		responseDec(responseCode: 102,
					responseCodeTitle: "Processing (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Informational",
					detailedDef: "placeholder")
	]),
	//MARK: 200
	responseType(name: "Success", responses: [
		responseDec(responseCode: 200,
					responseCodeTitle: "OK",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 201,
					responseCodeTitle: "Created",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 202,
					responseCodeTitle: "Accepted",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 203,
					responseCodeTitle: "Non-Authoritative Information",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 204,
					responseCodeTitle: "No Content",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 205,
					responseCodeTitle: "Reset Content",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 206,
					responseCodeTitle: "Partial Content",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 207,
					responseCodeTitle: "Multi-Status (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 208,
					responseCodeTitle: "Already Reported (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder"),
		responseDec(responseCode: 226,
					responseCodeTitle: "IM Used",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Success",
					detailedDef: "placeholder")
		
	]),
	//MARK: 300
	responseType(name: "Redirection", responses: [
		responseDec(responseCode: 300,
					responseCodeTitle: "Multiple Choices",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 301,
					responseCodeTitle: "Moved Permanently",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 302,
					responseCodeTitle: "Found",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 303,
					responseCodeTitle: "See Other",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 304,
					responseCodeTitle: "Not Modified",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 305,
					responseCodeTitle: "Use Proxy",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 306,
					responseCodeTitle: "(Unused)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 307,
					responseCodeTitle: "Temporary Redirect",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder"),
		responseDec(responseCode: 308,
					responseCodeTitle: "Permanent Redirect (experimental)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Redirection",
					detailedDef: "placeholder")
	]),
	//MARK: 400
	responseType(name: "Client Error", responses: [
		responseDec(responseCode: 400,
					responseCodeTitle: "Bad Request",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 401,
					responseCodeTitle: "Unauthorised",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 402,
					responseCodeTitle: "Payment Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 403,
					responseCodeTitle: "Forbidden",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 404,
					responseCodeTitle: "Not Found",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 405,
					responseCodeTitle: "Method Not Allowed",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 406,
					responseCodeTitle: "Not Acceptable",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 407,
					responseCodeTitle: "Proxy Authentication Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 408,
					responseCodeTitle: "Request Timeout",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 409,
					responseCodeTitle: "Conflict",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 410,
					responseCodeTitle: "Gone",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 411,
					responseCodeTitle: "Length Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 412,
					responseCodeTitle: "Precondition Failed",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 413,
					responseCodeTitle: "Request Entity Too Large",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 414,
					responseCodeTitle: "Request-URI Too Long",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 415,
					responseCodeTitle: "Unsupported Media Type",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 416,
					responseCodeTitle: "Requested Range Not Satisfiable",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 417,
					responseCodeTitle: "Expectation Failed",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 418,
					responseCodeTitle: "I'm A Teapot (RFC 2324)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 420,
					responseCodeTitle: "Enhance Your Calm (Twitter)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 422,
					responseCodeTitle: "Unprocessable Entity (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 423,
					responseCodeTitle: "Locked (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 424,
					responseCodeTitle: "Failed Dependency (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 425,
					responseCodeTitle: "Reserved for WebDAV",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 426,
					responseCodeTitle: "Upgrade Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 428,
					responseCodeTitle: "Precondition Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 429,
					responseCodeTitle: "Too Many Requests",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 431,
					responseCodeTitle: "Request Header Fields Too Large",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 444,
					responseCodeTitle: "No Response (Nginx)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 449,
					responseCodeTitle: "Retry With (Microsoft)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 450,
					responseCodeTitle: "Blocked by Windows Parental Controls (Microsoft)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 451,
					responseCodeTitle: "Unavailable For Legal Reasons",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 499,
					responseCodeTitle: "Client Closed Request (Nginx)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Client Error",
					detailedDef: "placeholder")
		
	]),
	//MARK: 500
	responseType(name: "Server Error", responses: [
		responseDec(responseCode: 500,
					responseCodeTitle: "Internal Server Error",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 501,
					responseCodeTitle: "Not Implemented",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 502,
					responseCodeTitle: "Bad Gateway",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 503,
					responseCodeTitle: "Service Unavailable",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 504,
					responseCodeTitle: "Gateway Timeout",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 505,
					responseCodeTitle: "HTTP Version Not Supported",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 506,
					responseCodeTitle: "Variant Also Negotiates (Experimental)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 507,
					responseCodeTitle: "Insufficient Storage (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 508,
					responseCodeTitle: "Loop Detected (WebDAV)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 509,
					responseCodeTitle: "Bandwidth Limit Exceeded (Apache)",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 510,
					responseCodeTitle: "Not Extended",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 511,
					responseCodeTitle: "Network Authentication Required",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 598,
					responseCodeTitle: "Network read timeout error",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder"),
		responseDec(responseCode: 599,
					responseCodeTitle: "Network connect timeout error",
					simplifiedDef: "placeholderSimplifiedDef",
					responseCodeType: "Server Error",
					detailedDef: "placeholder")
		
	])
]

//MARK: ReDefine All Response Codes
// This is where the View fetches the simplified and detailed defenitions as well as the type and title.
class ResponseCodes {
	//MARK: Error Code
	let res000 = responseDec(responseCode: 000,
							 responseCodeTitle: "!!!",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "!!!",
							 detailedDef: "placeholder")
	
	//MARK: 1** Response Codes
	let res100 = responseDec(responseCode: 100,
							 responseCodeTitle: "Continue",
							 simplifiedDef: "Simplified Error",
							 responseCodeType: "Informational",
							 detailedDef: "The client SHOULD continue with its request. This interim response is used to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed.")
	let res101 = responseDec(responseCode: 101,
							 responseCodeTitle: "Switching Protocols",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Informational",
							 detailedDef: "placeholder")
	let res102 = responseDec(responseCode: 102,
							 responseCodeTitle: "Processing (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Informational",
							 detailedDef: "placeholder")
	
	//MARK: 2** Response Codes
	let res200 = responseDec(responseCode: 200,
							 responseCodeTitle: "Ok",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res201 = responseDec(responseCode: 201,
							 responseCodeTitle: "Created",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res202 = responseDec(responseCode: 202,
							 responseCodeTitle: "Accepted",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res203 = responseDec(responseCode: 203,
							 responseCodeTitle: "Non-Authoritative Information",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res204 = responseDec(responseCode: 204,
							 responseCodeTitle: "No Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res205 = responseDec(responseCode: 205,
							 responseCodeTitle: "Reset Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res206 = responseDec(responseCode: 206,
							 responseCodeTitle: "Partial Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res207 = responseDec(responseCode: 207,
							 responseCodeTitle: "Multi-Status (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res208 = responseDec(responseCode: 208,
							 responseCodeTitle: "Already Reported (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res226 = responseDec(responseCode: 226,
							 responseCodeTitle: "IM Used",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	
	//MARK: 3** Response Codes
	let res300 = responseDec(responseCode: 300,
							 responseCodeTitle: "Multiple Choices",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res301 = responseDec(responseCode: 301,
							 responseCodeTitle: "Moved Permanently",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res302 = responseDec(responseCode: 302,
							 responseCodeTitle: "Found",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res303 = responseDec(responseCode: 303,
							 responseCodeTitle: "See Other",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res304 = responseDec(responseCode: 304,
							 responseCodeTitle: "Not Modified",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res305 = responseDec(responseCode: 305,
							 responseCodeTitle: "Use Proxy",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res306 = responseDec(responseCode: 306,
							 responseCodeTitle: "(Unused)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res307 = responseDec(responseCode: 307,
							 responseCodeTitle: "Temporary Redirect",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res308 = responseDec(responseCode: 308,
							 responseCodeTitle: "Permanent Redirect (experimental)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	
	//MARK: 4** Response Codes
	let res400 = responseDec(responseCode: 400,
							 responseCodeTitle: "Bad Request",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res401 = responseDec(responseCode: 401,
							 responseCodeTitle: "Unauthorised",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res402 = responseDec(responseCode: 402,
							 responseCodeTitle: "Payment Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res403 = responseDec(responseCode: 403,
							 responseCodeTitle: "Forbidden",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res404 = responseDec(responseCode: 404,
							 responseCodeTitle: "Not Found",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res405 = responseDec(responseCode: 405,
							 responseCodeTitle: "Method Not Allowed",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res406 = responseDec(responseCode: 406,
							 responseCodeTitle: "Not Acceptable",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res407 = responseDec(responseCode: 407,
							 responseCodeTitle: "Proxy Authentication Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res408 = responseDec(responseCode: 408,
							 responseCodeTitle: "Request Timeout",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res409 = responseDec(responseCode: 409,
							 responseCodeTitle: "Conflict",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res410 = responseDec(responseCode: 410,
							 responseCodeTitle: "Gone",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res411 = responseDec(responseCode: 411,
							 responseCodeTitle: "Length Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res412 = responseDec(responseCode: 412,
							 responseCodeTitle: "Precondition Failed",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res413 = responseDec(responseCode: 413,
							 responseCodeTitle: "Request Entity Too Large",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res414 = responseDec(responseCode: 414,
							 responseCodeTitle: "Request-URI Too Long",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res415 = responseDec(responseCode: 415,
							 responseCodeTitle: "Unsupported Media Type",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res416 = responseDec(responseCode: 416,
							 responseCodeTitle: "Requested Range Not Satisfiable",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res417 = responseDec(responseCode: 417,
							 responseCodeTitle: "Expectation Failed",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res418 = responseDec(responseCode: 418,
							 responseCodeTitle: "I', A Teapot (RFC 2324)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res420 = responseDec(responseCode: 420,
							 responseCodeTitle: "Enhance Your Calm (Twitter)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res422 = responseDec(responseCode: 422,
							 responseCodeTitle: "Unprocessable Entity (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res423 = responseDec(responseCode: 423,
							 responseCodeTitle: "Locked (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res424 = responseDec(responseCode: 424,
							 responseCodeTitle: "Failed Dependency (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res425 = responseDec(responseCode: 425,
							 responseCodeTitle: "Reserverd for WebDAV",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res426 = responseDec(responseCode: 426,
							 responseCodeTitle: "Upgrade Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res428 = responseDec(responseCode: 428,
							 responseCodeTitle: "Precondition Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res429 = responseDec(responseCode: 429,
							 responseCodeTitle: "Too Many Requests",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res431 = responseDec(responseCode: 431,
							 responseCodeTitle: "Request Header Fields Too Large",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res444 = responseDec(responseCode: 444,
							 responseCodeTitle: "No Response (Nginx)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res449 = responseDec(responseCode: 449,
							 responseCodeTitle: "Retry With (Microsoft)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res450 = responseDec(responseCode: 450,
							 responseCodeTitle: "Blocked by Windows Parental Controls (Microsoft)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res451 = responseDec(responseCode: 451,
							 responseCodeTitle: "Unavailable For Legal Reasons",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	let res499 = responseDec(responseCode: 499,
							 responseCodeTitle: "Client Closed Request (Nginx)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "placeholder")
	
	//MARK: 5** Response Codes
	let res500 = responseDec(responseCode: 500,
							 responseCodeTitle: "Internal Server Error",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server encountered an unexpected condition which prevented it from fulfilling the request.")
	let res501 = responseDec(responseCode: 501,
							 responseCodeTitle: "Not Implemented",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.")
	let res502 = responseDec(responseCode: 502,
							 responseCodeTitle: "Bad Gateway",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request.")
	let res503 = responseDec(responseCode: 503,
							 responseCodeTitle: "Service Unavailable",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay. If known, the length of the delay MAY be indicated in a Retry-After header. If no Retry-After is given, the client SHOULD handle the response as it would for a 500 response.\nNote: The existence of the 503 status code does not imply that a server must use it when becoming overloaded. Some servers may wish to simply refuse the connection.")
	let res504 = responseDec(responseCode: 504,
							 responseCodeTitle: "Gateway Timeout",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out.")
	let res505 = responseDec(responseCode: 505,
							 responseCodeTitle: "HTTP Version Not Supported",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out.")
	let res506 = responseDec(responseCode: 506,
							 responseCodeTitle: "Variant Also Negotiates (Experimental)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The 506 status code indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.")
	let res507 = responseDec(responseCode: 507,
							 responseCodeTitle: "Insufficient Storage (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The 507 (Insufficient Storage) status code means the method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request. This condition is considered to be temporary. If the request that received this status code was the result of a user action, the request MUST NOT be repeated until it is requested by a separate user action.")
	let res508 = responseDec(responseCode: 508,
							 responseCodeTitle: "Loop Detected (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: """
								The 508 (Loop Detected) status code indicates that the server terminated an operation because it encountered an infinite loop while processing a request with "Depth: infinity". This status indicates that the entire operation failed.
								""")
	let res509 = responseDec(responseCode: 509,
							 responseCodeTitle: "Bandwidth Limit Exceeded (Apache)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code, while used by many servers, is not specified in any RFCs.")
	let res510 = responseDec(responseCode: 510,
							 responseCodeTitle: "Not Extended",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "The policy for accessing the resource has not been met in the request. The server should send back all the information necessary for the client to issue an extended request. It is outside the scope of this specification to specify how the extensions inform the client.\nIf the 510 response contains information about extensions that were not present in the initial request then the client MAY repeat the request if it has reason to believe it can fulfil the extension policy by modifying the request according to the information provided in the 510 response. Otherwise the client MAY present any entity included in the 510 response to the user, since that entity may include relevant diagnostic information.")
	let res511 = responseDec(responseCode: 511,
							 responseCodeTitle: "Network Authentication Required",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: """
		The 511 status code indicates that the client needs to authenticate to gain network access.
		The response representation SHOULD contain a link to a resource that allows the user to submit credentials (e.g. with a HTML form).
		Note that the 511 response SHOULD NOT contain a challenge or the login interface itself, because browsers would show the login interface as being associated with the originally requested URL, which may cause confusion.
		The 511 status SHOULD NOT be generated by origin servers; it is intended for use by intercepting proxies that are interposed as a means of controlling access to the network.
		Responses with the 511 status code MUST NOT be stored by a cache.
		The 511 status code is designed to mitigate problems caused by "captive portals" to software (especially non-browser agents) that is expecting a response from the server that a request was made to, not the intervening network infrastructure. It is not intended to encouraged deployment of captive portals, only to limit the damage caused by them.
		A network operator wishing to require some authentication, acceptance of terms or other user interaction before granting access usually does so by identifing clients who have not done so ("unknown clients") using their MAC addresses.
		Unknown clients then have all traffic blocked, except for that on TCP port 80, which is sent to a HTTP server (the "login server") dedicated to "logging in" unknown clients, and of course traffic to the login server itself.
		In common use, a response carrying the 511 status code will not come from the origin server indicated in the request's URL. This presents many security issues; e.g., an attacking intermediary may be inserting cookies into the original domain's name space, may be observing cookies or HTTP authentication credentials sent from the user agent, and so on.
		However, these risks are not unique to the 511 status code; in other words, a captive portal that is not using this status code introduces the same issues.
		Also, note that captive portals using this status code on an SSL or TLS connection (commonly, port 443) will generate a certificate error on the client.
		""")
	let res598 = responseDec(responseCode: 598,
							 responseCodeTitle: "Network read timeout error",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network read timeout behind the proxy to a client in front of the proxy.")
	let res599 = responseDec(responseCode: 599,
							 responseCodeTitle: "Network connect timeout error",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network connect timeout behind the proxy to a client in front of the proxy.")
}
