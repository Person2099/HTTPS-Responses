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

//MARK: Re-Define All Response Codes
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
							 simplifiedDef: "The request should be continued. This response indicates that the first part of the request is being processed and the rest of the request should be completed.",
							 responseCodeType: "Informational",
							 detailedDef: "The client SHOULD continue with its request. This interim response is used to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed.")
	let res101 = responseDec(responseCode: 101,
							 responseCodeTitle: "Switching Protocols",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Informational",
							 detailedDef:
								"""
The server understands and is willing to comply with the client's request, for a change in the application protocol being used on this connection. The server will switch protocols to those defined by the response's.
The protocol SHOULD be switched only when it is advantageous to do so. For example, switching to a newer version of HTTP is advantageous over older versions, and switching to a real-time, synchronous protocol might be advantageous when delivering resources that use such features.
""")
	let res102 = responseDec(responseCode: 102,
							 responseCodeTitle: "Processing (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Informational",
							 detailedDef:
								"""
The 102 (Processing) status code is an interim response used to inform the client that the server has accepted the complete request, but has not yet completed it. This status code SHOULD only be sent when the server has a reasonable expectation that the request will take significant time to complete. As guidance, if a method is taking longer than 20 seconds (a reasonable, but arbitrary value) to process the server SHOULD return a 102 (Processing) response. The server MUST send a final response after the request has been completed.
""")
	
	//MARK: 2** Response Codes
	let res200 = responseDec(responseCode: 200,
							 responseCodeTitle: "Ok",
							 simplifiedDef: "The request has succeeded. This response may also contain information based on the request.",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:
• GET an entity corresponding to the requested resource is sent in the response;
• HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
• POST an entity describing or containing the result of the action;
• TRACE an entity containing the request message as received by the end server.
""")
	let res201 = responseDec(responseCode: 201,
							 responseCodeTitle: "Created",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef:
								"""
		The request has been fulfilled and resulted in a new resource being created. The response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. . The origin server MUST create the resource before returning the 201 status code. If the action cannot be carried out immediately, the server SHOULD respond with 202 (Accepted) response instead.
""")
	let res202 = responseDec(responseCode: 202,
							 responseCodeTitle: "Accepted",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place.
The 202 response is intentionally non-committal. Its purpose is to allow a server to accept a request for some other process without requiring that the user agent's connection to the server persist until the process is completed. The entity returned with this response SHOULD include an indication of the request's current status.
""")
	let res203 = responseDec(responseCode: 203,
							 responseCodeTitle: "Non-Authoritative Information",
							 simplifiedDef:
								"""
The provided response includes third party content and is not directly provided by the entity it was requested from. The set presented MAY be a subset or superset of the original version.
""",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The returned metainformation in the entity-header is not the definitive set as available from the origin server, but is gathered from a local or a third-party copy. The set presented MAY be a subset or superset of the original version. For example, including local annotation information about the resource might result in a superset of the metainformation known by the origin server. Use of this response code is not required and is only appropriate when the response would otherwise be 200 (OK).
""")
	let res204 = responseDec(responseCode: 204,
							 responseCodeTitle: "No Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. The response MAY include new or updated metainformation in the form of entity-headers, which if present SHOULD be associated with the requested variant.
If the client is a user agent, it SHOULD NOT change its document view from that which caused the request to be sent. This response is primarily intended to allow input for actions to take place without causing a change to the user agent's active document view, although any new or updated metainformation SHOULD be applied to the document currently in the user agent's active view.
The 204 response MUST NOT include a message-body, and thus is always terminated by the first empty line after the header fields.
""")
	let res205 = responseDec(responseCode: 205,
							 responseCodeTitle: "Reset Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: "The server has fulfilled the request and the user agent SHOULD reset the document view which caused the request to be sent. This response is primarily intended to allow input for actions to take place via user input, followed by a clearing of the form in which the input is given so that the user can easily initiate another input action. The response MUST NOT include an entity.")
	let res206 = responseDec(responseCode: 206,
							 responseCodeTitle: "Partial Content",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The server has fulfilled the partial GET request for the resource. The request MUST have included a Range header field indicating the desired range, and MAY have included an If-Range header field  to make the request conditional.
The response MUST include the following header fields:
• Either a Content-Range header field  indicating the range included with this response, or a multipart/byteranges Content-Type including Content-Range fields for each part. If a Content-Length header field is present in the response, its value MUST match the actual number of OCTETs transmitted in the message-body.
• Date
• ETag and/or Content-Location, if the header would have been sent in a 200 response to the same request
• Expires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant
If the 206 response is the result of an If-Range request that used a strong cache validator, the response SHOULD NOT include other entity-headers. If the response is the result of an If-Range request that used a weak validator, the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers. Otherwise, the response MUST include all of the entity-headers that would have been returned with a 200 (OK) response to the same request.
A cache MUST NOT combine a 206 response with other previously cached content if the ETag or Last-Modified headers do not match exactly.
A cache that does not support the Range and Content-Range headers MUST NOT cache 206 (Partial) responses.
""")
	let res207 = responseDec(responseCode: 207,
							 responseCodeTitle: "Multi-Status (WebDAV)",
							 simplifiedDef: "The 207 (Multi-Status) status code provides status for multiple independent operations (see section 11 for more information).",
							 responseCodeType: "Success",
							 detailedDef: "placeholder")
	let res208 = responseDec(responseCode: 208,
							 responseCodeTitle: "Already Reported (WebDAV)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The 208 (Already Reported) status code can be used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly. For each binding to a collection inside the request's scope, only one will be reported with a 200 status, while subsequent DAV:response elements for all other bindings will use the 208 status, and no DAV:response elements for their descendants are included.
""")
	let res226 = responseDec(responseCode: 226,
							 responseCodeTitle: "IM Used",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Success",
							 detailedDef: """
The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance. The actual current instance might not be available except by combining this response with other previous or future responses, as appropriate for the specific instance-manipulation(s). If so, the headers of the resulting instance are the result of combining the headers from the status-226 response and the other instances, following the rules in the HTTP/1.1 specification.
The request MUST have included an A-IM header field listing at least one instance-manipulation. The response MUST include an Etag header field giving the entity tag of the current instance.
A response received with a status code of 226 MAY be stored by a cache and used in reply to a subsequent request, subject to the HTTP expiration mechanism and any Cache-Control headers.
A response received with a status code of 226 MAY be used by a cache, in conjunction with a cache entry for the base instance, to create a cache entry for the current instance.
""")
	
	//MARK: 3** Response Codes
	let res300 = responseDec(responseCode: 300,
							 responseCodeTitle: "Multiple Choices",
							 simplifiedDef: "This response indicates that there are multiple versions, or choices, of the requested data and is providing the client with the ability to choose which one to use.",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource corresponds to any one of a set of representations, each with its own specific location, and agent- driven negotiation information (section 12) is being provided so that the user (or user agent) can select a preferred representation and redirect its request to that location.
Unless it was a HEAD request, the response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content- Type header field. Depending upon the format and the capabilities of the user agent, selection of the most appropriate choice MAY be performed automatically. However, this specification does not define any standard for such automatic selection.
If the server has a preferred choice of representation, it SHOULD include the specific URI for that representation in the Location field; user agents MAY use the Location field value for automatic redirection. This response is cacheable unless indicated otherwise.
""")
	let res301 = responseDec(responseCode: 301,
							 responseCodeTitle: "Moved Permanently",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. Clients with link editing capabilities ought to automatically re-link references to the Request-URI to one or more of the new references returned by the server, where possible. This response is cacheable unless indicated otherwise.
The new permanent URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
If the 301 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
Note: When automatically redirecting a POST request after receiving a 301 status code, some existing HTTP/1.0 user agents will erroneously change it into a GET request.
""")
	let res302 = responseDec(responseCode: 302,
							 responseCodeTitle: "Found",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
The temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
 
If the 302-status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
""")
	let res303 = responseDec(responseCode: 303,
							 responseCodeTitle: "See Other",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: """
The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource. This method exists primarily to allow the output of a POST-activated script to redirect the user agent to a selected resource. The new URI is not a substitute reference for the originally requested resource. The 303 response MUST NOT be cached, but the response to the second (redirected) request might be cacheable.

The different URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).

Note: Many pre-HTTP/1.1 user agents do not understand the 303 status. When interoperability with such clients is a concern, the 302 status code may be used instead, since most user agents react to a 302 response as described here for 303.
""")
	let res304 = responseDec(responseCode: 304,
							 responseCodeTitle: "Not Modified",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef: """
If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields.

The response MUST include the following header fields:

Date, unless its omission is required by section 14.18.1
If a clockless origin server obeys these rules, and proxies and clients add their own Date to any response received without one (as already specified by [RFC 2068], section 14.19), caches will operate correctly.

ETag and/or Content-Location, if the header would have been sent in a 200 response to the same request
Expires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant
If the conditional GET used a strong cache validator (see section 13.3.3), the response SHOULD NOT include other entity-headers. Otherwise (i.e., the conditional GET used a weak validator), the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers.

If a 304 response indicates an entity not currently cached, then the cache MUST disregard the response and repeat the request without the conditional.

If a cache uses a received 304 response to update a cache entry, the cache MUST update the entry to reflect any new field values given in the response.
""")
	let res305 = responseDec(responseCode: 305,
							 responseCodeTitle: "Use Proxy",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource MUST be accessed through the proxy given by the Location field. The Location field gives the URI of the proxy. The recipient is expected to repeat this single request via the proxy. 305 responses MUST only be generated by origin servers.

Note: RFC 2068 was not clear that 305 was intended to redirect a single request, and to be generated by origin servers only. Not observing these limitations has significant security consequences.
""")
	let res306 = responseDec(responseCode: 306,
							 responseCodeTitle: "(Unused)",
							 simplifiedDef: "The 306 status code was used in a previous version of the specification, is no longer used, and the code is reserved.",
							 responseCodeType: "Redirection",
							 detailedDef: "placeholder")
	let res307 = responseDec(responseCode: 307,
							 responseCodeTitle: "Temporary Redirect",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.

The temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s) , since many pre-HTTP/1.1 user agents do not understand the 307 status. Therefore, the note SHOULD contain the information necessary for a user to repeat the original request on the new URI.

If the 307 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
""")
	let res308 = responseDec(responseCode: 308,
							 responseCodeTitle: "Permanent Redirect (experimental)",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The request, and all future requests should be repeated using another URI. 307 and 308 (as proposed) parallel the behaviours of 302 and 301, but do not require the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly. This response code is considered experimental.
""")
	
	//MARK: 4** Response Codes
	let res400 = responseDec(responseCode: 400,
							 responseCodeTitle: "Bad Request",
							 simplifiedDef: "The request could not be understood by the server.",
							 responseCodeType: "Client Error",
							 detailedDef: "The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.")
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
							 simplifiedDef: "The server encountered an error and could not complete the request.",
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
