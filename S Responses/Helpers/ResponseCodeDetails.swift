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
							 responseCodeType: "placeholderRCType",
							 detailedDef: "placeholder")
	
	//MARK: 1** Response Codes
	let res100 = responseDec(responseCode: 100,
							 responseCodeTitle: "Continue",
							 simplifiedDef: "The request should be continued. This response indicates that the first part of the request is being processed and the rest of the request should be completed.",
							 responseCodeType: "Informational",
							 detailedDef: "The client SHOULD continue with its request. This interim response is used to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed.")
	let res101 = responseDec(responseCode: 101,
							 responseCodeTitle: "Switching Protocols",
							 simplifiedDef: "The client has asked the server to switch protocols and the server is acknowledging that it will do so.",
							 responseCodeType: "Informational",
							 detailedDef:
								"""
The server understands and is willing to comply with the client's request, for a change in the application protocol being used on this connection. The server will switch protocols to those defined by the response's.
The protocol SHOULD be switched only when it is advantageous to do so. For example, switching to a newer version of HTTP is advantageous over older versions, and switching to a real-time, synchronous protocol might be advantageous when delivering resources that use such features.
""")
	let res102 = responseDec(responseCode: 102,
							 responseCodeTitle: "Processing (WebDAV)",
							 simplifiedDef: "As a WebDAV request may contain many sub-requests involving file operations, it may take a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet.",
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
							 simplifiedDef: "The request has been fulfilled and resulted in a new resource being created.",
							 responseCodeType: "Success",
							 detailedDef:
								"""
		The request has been fulfilled and resulted in a new resource being created. The response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. . The origin server MUST create the resource before returning the 201 status code. If the action cannot be carried out immediately, the server SHOULD respond with 202 (Accepted) response instead.
""")
	let res202 = responseDec(responseCode: 202,
							 responseCodeTitle: "Accepted",
							 simplifiedDef: "The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it may be disallowed when processing actually takes place.",
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
							 simplifiedDef: "The server successfully processed the request, but is not returning any content.",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. The response MAY include new or updated metainformation in the form of entity-headers, which if present SHOULD be associated with the requested variant.
If the client is a user agent, it SHOULD NOT change its document view from that which caused the request to be sent. This response is primarily intended to allow input for actions to take place without causing a change to the user agent's active document view, although any new or updated metainformation SHOULD be applied to the document currently in the user agent's active view.
The 204 response MUST NOT include a message-body, and thus is always terminated by the first empty line after the header fields.
""")
	let res205 = responseDec(responseCode: 205,
							 responseCodeTitle: "Reset Content",
							 simplifiedDef: "The server has fulfilled the request and is recomending that the document view which caused the request to be sent is reset.",
							 responseCodeType: "Success",
							 detailedDef: "The server has fulfilled the request and the user agent SHOULD reset the document view which caused the request to be sent. This response is primarily intended to allow input for actions to take place via user input, followed by a clearing of the form in which the input is given so that the user can easily initiate another input action. The response MUST NOT include an entity.")
	let res206 = responseDec(responseCode: 206,
							 responseCodeTitle: "Partial Content",
							 simplifiedDef: "The server is delivering only part of the resource due to a range header sent by the client.",
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
							 simplifiedDef: "This response contains status' for multiple operations.",
							 responseCodeType: "Success",
							 detailedDef:"The 207 (Multi-Status) status code provides status for multiple independent operations (see section 11 for more information).")
	let res208 = responseDec(responseCode: 208,
							 responseCodeTitle: "Already Reported (WebDAV)",
							 simplifiedDef: "The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.",
							 responseCodeType: "Success",
							 detailedDef:
								"""
The 208 (Already Reported) status code can be used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly. For each binding to a collection inside the request's scope, only one will be reported with a 200 status, while subsequent DAV:response elements for all other bindings will use the 208 status, and no DAV:response elements for their descendants are included.
""")
	let res226 = responseDec(responseCode: 226,
							 responseCodeTitle: "IM Used",
							 simplifiedDef: "The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.",
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
							 simplifiedDef: "This and all future requests should be directed to the given URI.",
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
							 simplifiedDef: "The requested resource resides temporarily under a different URI.",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
The temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
 
If the 302-status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
""")
	let res303 = responseDec(responseCode: 303,
							 responseCodeTitle: "See Other",
							 simplifiedDef: "The response to the request can be found under another URI.",
							 responseCodeType: "Redirection",
							 detailedDef: """
The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource. This method exists primarily to allow the output of a POST-activated script to redirect the user agent to a selected resource. The new URI is not a substitute reference for the originally requested resource. The 303 response MUST NOT be cached, but the response to the second (redirected) request might be cacheable.

The different URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).

Note: Many pre-HTTP/1.1 user agents do not understand the 303 status. When interoperability with such clients is a concern, the 302 status code may be used instead, since most user agents react to a 302 response as described here for 303.
""")
	let res304 = responseDec(responseCode: 304,
							 responseCodeTitle: "Not Modified",
							 simplifiedDef: "Indicates the resource has not been modified since last requested.",
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
							 simplifiedDef: "The requested resource MUST be accessed through the proxy given by the Location field.",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource MUST be accessed through the proxy given by the Location field. The Location field gives the URI of the proxy. The recipient is expected to repeat this single request via the proxy. 305 responses MUST only be generated by origin servers.

Note: RFC 2068 was not clear that 305 was intended to redirect a single request, and to be generated by origin servers only. Not observing these limitations has significant security consequences.
""")
	let res306 = responseDec(responseCode: 306,
							 responseCodeTitle: "(Unused)",
							 simplifiedDef: "The 306 status code is no longer used, and the code is reserved.",
							 responseCodeType: "Redirection",
							 detailedDef: "The 306 status code was used in a previous version of the specification, is no longer used, and the code is reserved.")
	let res307 = responseDec(responseCode: 307,
							 responseCodeTitle: "Temporary Redirect",
							 simplifiedDef: "The requested resource resides temporarily under a different URI.",
							 responseCodeType: "Redirection",
							 detailedDef:
								"""
The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.

The temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s) , since many pre-HTTP/1.1 user agents do not understand the 307 status. Therefore, the note SHOULD contain the information necessary for a user to repeat the original request on the new URI.

If the 307 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
""")
	let res308 = responseDec(responseCode: 308,
							 responseCodeTitle: "Permanent Redirect (experimental)",
							 simplifiedDef: "The request, and all future requests should be repeated using another URI.",
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
							 simplifiedDef: "The request requires user authentication",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The request requires user authentication. The response MUST include a WWW-Authenticate header field (section 14.47) containing a challenge applicable to the requested resource. The client MAY repeat the request with a suitable Authorization header field (section 14.8). If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials. If the 401 response contains the same challenge as the prior response, and the user agent has already attempted authentication at least once, then the user SHOULD be presented the entity that was given in the response, since that entity might include relevant diagnostic information.
""")
	let res402 = responseDec(responseCode: 402,
							 responseCodeTitle: "Payment Required",
							 simplifiedDef: "This code is reserved for future use.",
							 responseCodeType: "Client Error",
							 detailedDef: "Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, but that has not happened, and this code is not usually used.")
	let res403 = responseDec(responseCode: 403,
							 responseCodeTitle: "Forbidden",
							 simplifiedDef: "The server understood the request but is refusing to fulfill it.",
							 responseCodeType: "Client Error",
							 detailedDef: "The server understood the request but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated. If the request method was not HEAD and the server wishes to make public why the request has not been fulfilled, it SHOULD describe the reason for the refusal in the entity. If the server does not wish to make this information available to the client, the status code 404 (Not Found) can be used instead.")
	let res404 = responseDec(responseCode: 404,
							 responseCodeTitle: "Not Found",
							 simplifiedDef: "The server has not found anything matching the Request.",
							 responseCodeType: "Client Error",
							 detailedDef: "The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. The 410 (Gone) status code SHOULD be used if the server knows, through some internally configurable mechanism, that an old resource is permanently unavailable and has no forwarding address. This status code is commonly used when the server does not wish to reveal exactly why the request has been refused, or when no other response is applicable.")
	let res405 = responseDec(responseCode: 405,
							 responseCodeTitle: "Method Not Allowed",
							 simplifiedDef: "The method specified in the Request-Line is not allowed.",
							 responseCodeType: "Client Error",
							 detailedDef: "The method specified in the Request-Line is not allowed for the resource identified by the Request-URI. The response MUST include an Allow header containing a list of valid methods for the requested resource.")
	let res406 = responseDec(responseCode: 406,
							 responseCodeTitle: "Not Acceptable",
							 simplifiedDef: "The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request.
Unless it was a HEAD request, the response SHOULD include an entity containing a list of available entity characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content-Type header field. Depending upon the format and the capabilities of the user agent, selection of the most appropriate choice MAY be performed automatically. However, this specification does not define any standard for such automatic selection.
""")
	let res407 = responseDec(responseCode: 407,
							 responseCodeTitle: "Proxy Authentication Required",
							 simplifiedDef: "The client must first authenticate itself with the proxy.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
This code is similar to 401 (Unauthorized), but indicates that the client must first authenticate itself with the proxy. The proxy MUST return a Proxy-Authenticate header field (section 14.33) containing a challenge applicable to the proxy for the requested resource. The client MAY repeat the request with a suitable Proxy-Authorization header field (section 14.34). HTTP access authentication is explained in "HTTP Authentication: Basic and Digest Access Authentication".
""")
	let res408 = responseDec(responseCode: 408,
							 responseCodeTitle: "Request Timeout",
							 simplifiedDef: "The server timed out waiting for the request.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The client did not produce a request within the time that the server was prepared to wait. The client MAY repeat the request without modifications at any later time.
""")
	let res409 = responseDec(responseCode: 409,
							 responseCodeTitle: "Conflict",
							 simplifiedDef: "This response code indicates that the request could not be processed because of conflict in the request.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The request could not be completed due to a conflict with the current state of the resource. This code is only allowed in situations where it is expected that the user might be able to resolve the conflict and resubmit the request. The response body SHOULD include enough information for the user to recognize the source of the conflict. Ideally, the response entity would include enough information for the user or user agent to fix the problem; however, that might not be possible and is not required.

Conflicts are most likely to occur in response to a PUT request. For example, if versioning were being used and the entity being PUT included changes to a resource which conflict with those made by an earlier (third-party) request, the server might use the 409 response to indicate that it can't complete the request. In this case, the response entity would likely contain a list of the differences between the two versions in a format defined by the response Content-Type.
""")
	let res410 = responseDec(responseCode: 410,
							 responseCodeTitle: "Gone",
							 simplifiedDef: "The resource that was requested is no longer avaliable at the location specified.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval. If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 (Not Found) SHOULD be used instead. This response is cacheable unless indicated otherwise.

The 410 response is primarily intended to assist the task of web maintenance by notifying the recipient that the resource is intentionally unavailable and that the server owners desire that remote links to that resource be removed. Such an event is common for limited-time, promotional services and for resources belonging to individuals no longer working at the server's site. It is not necessary to mark all permanently unavailable resources as "gone" or to keep the mark for any length of time -- that is left to the discretion of the server owner.
""")
	let res411 = responseDec(responseCode: 411,
							 responseCodeTitle: "Length Required",
							 simplifiedDef: "The request was denied due to the content-length header field being missing.",
							 responseCodeType: "Client Error",
							 detailedDef: "The server refuses to accept the request without a defined Content- Length. The client MAY repeat the request if it adds a valid Content-Length header field containing the length of the message-body in the request message.")
	let res412 = responseDec(responseCode: 412,
							 responseCodeTitle: "Precondition Failed",
							 simplifiedDef: "placeholderSimplifiedDef",
							 responseCodeType: "Client Error",
							 detailedDef: "The precondition given in one or more of the request-header fields evaluated to false when it was tested on the server. This response code allows the client to place preconditions on the current resource metainformation (header field data) and thus prevent the requested method from being applied to a resource other than the one intended.")
	let res413 = responseDec(responseCode: 413,
							 responseCodeTitle: "Request Entity Too Large",
							 simplifiedDef: "The server denied the request as the request was too large in size.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The server is refusing to process a request because the request entity is larger than the server is willing or able to process. The server MAY close the connection to prevent the client from continuing the request.

If the condition is temporary, the server SHOULD include a Retry- After header field to indicate that it is temporary and after what time the client MAY try again.
""")
	let res414 = responseDec(responseCode: 414,
							 responseCodeTitle: "Request-URI Too Long",
							 simplifiedDef: "The URI provided was too long for the server to process.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The server is refusing to service the request because the Request-URI is longer than the server is willing to interpret. This rare condition is only likely to occur when a client has improperly converted a POST request to a GET request with long query information, when the client has descended into a URI "black hole" of redirection (e.g., a redirected URI prefix that points to a suffix of itself), or when the server is under attack by a client attempting to exploit security holes present in some servers using fixed-length buffers for reading or manipulating the Request-URI.
""")
	let res415 = responseDec(responseCode: 415,
							 responseCodeTitle: "Unsupported Media Type",
							 simplifiedDef: "The request entity has a media type which the server or resource does not support.",
							 responseCodeType: "Client Error",
							 detailedDef: "The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource for the requested method.")
	let res416 = responseDec(responseCode: 416,
							 responseCodeTitle: "Requested Range Not Satisfiable",
							 simplifiedDef: "The client has asked for a portion of the file, but the server cannot supply that portion.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
A server SHOULD return a response with this status code if a request included a Range request-header field (section 14.35), and none of the range-specifier values in this field overlap the current extent of the selected resource, and the request did not include an If-Range request-header field. (For byte-ranges, this means that the first- byte-pos of all of the byte-range-spec values were greater than the current length of the selected resource.)

When this status code is returned for a byte-range request, the response SHOULD include a Content-Range entity-header field specifying the current length of the selected resource (see section 14.16). This response MUST NOT use the multipart/byteranges content- type.
""")
	let res417 = responseDec(responseCode: 417,
							 responseCodeTitle: "Expectation Failed",
							 simplifiedDef: "The server cannot meet the requirements of the Expect request-header field.",
							 responseCodeType: "Client Error",
							 detailedDef: "The expectation given in an Expect request-header field (see section 14.20) could not be met by this server, or, if the server is a proxy, the server has unambiguous evidence that the request could not be met by the next-hop server.")
	let res418 = responseDec(responseCode: 418,
							 responseCodeTitle: "I', A Teapot (RFC 2324)",
							 simplifiedDef: "This response code was defined in 1998 as an April Fools' Joke",
							 responseCodeType: "Client Error",
							 detailedDef: "This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers. However, known implementations do exist. An Nginx HTTP server uses this code to simulate goto-like behaviour in its configuration.")
	let res420 = responseDec(responseCode: 420,
							 responseCodeTitle: "Enhance Your Calm (Twitter)",
							 simplifiedDef: "This response code is a reference to 'Demolition Man' and is used exclusively by twitter API's when the client is being rate limited. (Similar to 429)",
							 responseCodeType: "Client Error",
							 detailedDef: "Returned by the Twitter Search and Trends API when the client is being rate limited. The text is a quote from 'Demolition Man' and the '420' code is likely a reference to this number's association with marijuana. Other services may wish to implement the 429 Too Many Requests response code instead.")
	let res422 = responseDec(responseCode: 422,
							 responseCodeTitle: "Unprocessable Entity (WebDAV)",
							 simplifiedDef: "The request was well-formed however the server was unable to process the contained instructions.",
							 responseCodeType: "Client Error",
							 detailedDef: "The 422 (Unprocessable Entity) status code means the server understands the content type of the request entity (hence a 415(Unsupported Media Type) status code is inappropriate), and the syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable to process the contained instructions. For example, this error condition may occur if an XML request body contains well-formed (i.e., syntactically correct), but semantically erroneous, XML instructions.")
	let res423 = responseDec(responseCode: 423,
							 responseCodeTitle: "Locked (WebDAV)",
							 simplifiedDef: "The resource that was requested is locked.",
							 responseCodeType: "Client Error",
							 detailedDef: "The 423 (Locked) status code means the source or destination resource of a method is locked. This response SHOULD contain an appropriate precondition or postcondition code, such as 'lock-token-submitted' or 'no-conflicting-lock'.")
	let res424 = responseDec(responseCode: 424,
							 responseCodeTitle: "Failed Dependency (WebDAV)",
							 simplifiedDef: "The request failed due to failure of a previous request which it depended on.",
							 responseCodeType: "Client Error",
							 detailedDef: "The 424 (Failed Dependency) status code means that the method could not be performed on the resource because the requested action depended on another action and that action failed. For example, if a command in a PROPPATCH method fails, then, at minimum, the rest of the commands will also fail with 424 (Failed Dependency).")
	let res425 = responseDec(responseCode: 425,
							 responseCodeTitle: "Reserved for WebDAV",
							 simplifiedDef: "This status code is reserved for use by WebDAV but is not yet in use.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
Defined in drafts of "WebDAV Advanced Collections Protocol", but not present in "Web Distributed Authoring and Versioning (WebDAV) Ordered Collections Protocol".
""")
	let res426 = responseDec(responseCode: 426,
							 responseCodeTitle: "Upgrade Required",
							 simplifiedDef: "The client should switch to a different protocol such as TLS/1.0.",
							 responseCodeType: "Client Error",
							 detailedDef: "Reliable, interoperable negotiation of Upgrade features requires an unambiguous failure signal. The 426 Upgrade Required status code allows a server to definitively state the precise protocol extensions a given resource must be served with.")
	let res428 = responseDec(responseCode: 428,
							 responseCodeTitle: "Precondition Required",
							 simplifiedDef: "The origin server requires the request to be conditional.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The 428 status code indicates that the origin server requires the request to be conditional.

Its typical use is to avoid the "lost update" problem, where a client GETs a resource's state, modifies it, and PUTs it back to the server, when meanwhile a third party has modified the state on the server, leading to a conflict. By requiring requests to be conditional, the server can assure that clients are working with the correct copies.

Responses using this status code SHOULD explain how to resubmit the request successfully.

The 428 status code is optional; clients cannot rely upon its use to prevent "lost update" conflicts.
""")
	let res429 = responseDec(responseCode: 429,
							 responseCodeTitle: "Too Many Requests",
							 simplifiedDef: "The client has sent too many requests in a given amount of time. ",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The 429 status code indicates that the user has sent too many requests in a given amount of time ("rate limiting").

The response representations SHOULD include details explaining the condition, and MAY include a Retry-After header indicating how long to wait before making a new request.

When a server is under attack or just receiving a very large number of requests from a single party, responding to each with a 429 status code will consume resources.

Therefore, servers are not required to use the 429 status code; when limiting resource usage, it may be more appropriate to just drop connections, or take other steps.
""")
	let res431 = responseDec(responseCode: 431,
							 responseCodeTitle: "Request Header Fields Too Large",
							 simplifiedDef: "The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large.",
							 responseCodeType: "Client Error",
							 detailedDef:
								"""
The 431 status code indicates that the server is unwilling to process the request because its header fields are too large. The request MAY be resubmitted after reducing the size of the request header fields.

It can be used both when the set of request header fields in total are too large, and when a single header field is at fault. In the latter case, the response representation SHOULD specify which header field was too large.

Servers are not required to use the 431 status code; when under attack, it may be more appropriate to just drop connections, or take other steps.
""")
	let res444 = responseDec(responseCode: 444,
							 responseCodeTitle: "No Response (Nginx)",
							 simplifiedDef: "The server closed the connection with no explination.",
							 responseCodeType: "Client Error",
							 detailedDef: "An Nginx HTTP server extension. The server returns no information to the client and closes the connection (useful as a deterrent for malware).")
	let res449 = responseDec(responseCode: 449,
							 responseCodeTitle: "Retry With (Microsoft)",
							 simplifiedDef: "The request should be retried after completing the indicated action",
							 responseCodeType: "Client Error",
							 detailedDef: "A Microsoft extension. The request should be retried after performing the appropriate action.")
	let res450 = responseDec(responseCode: 450,
							 responseCodeTitle: "Blocked by Windows Parental Controls (Microsoft)",
							 simplifiedDef: "Microsoft Parental Controls have blocked access to this material.",
							 responseCodeType: "Client Error",
							 detailedDef: "A Microsoft extension. This error is given when Windows Parental Controls are turned on and are blocking access to the given webpage.")
	let res451 = responseDec(responseCode: 451,
							 responseCodeTitle: "Unavailable For Legal Reasons",
							 simplifiedDef: "Access to the resource is blocked for legal reasons.",
							 responseCodeType: "Client Error",
							 detailedDef: "Intended to be used when resource access is denied for legal reasons, e.g. censorship or government-mandated blocked access. A reference to the 1953 dystopian novel Fahrenheit 451, where books are outlawed, and the autoignition temperature of paper, 451°F.")
	let res499 = responseDec(responseCode: 499,
							 responseCodeTitle: "Client Closed Request (Nginx)",
							 simplifiedDef: "The client has closed the connection while the server was processing its request.",
							 responseCodeType: "Client Error",
							 detailedDef: "An Nginx HTTP server extension. This code is introduced to log the case when the connection is closed by client while HTTP server is processing its request, making server unable to send the HTTP header back.")
	
	//MARK: 5** Response Codes
	let res500 = responseDec(responseCode: 500,
							 responseCodeTitle: "Internal Server Error",
							 simplifiedDef: "The server encountered an error and could not complete the request.",
							 responseCodeType: "Server Error",
							 detailedDef: "The server encountered an unexpected condition which prevented it from fulfilling the request.")
	let res501 = responseDec(responseCode: 501,
							 responseCodeTitle: "Not Implemented",
							 simplifiedDef: "The server has not implemented the functionality to process the request.",
							 responseCodeType: "Server Error",
							 detailedDef: "The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.")
	let res502 = responseDec(responseCode: 502,
							 responseCodeTitle: "Bad Gateway",
							 simplifiedDef: "The server received an invalid response from the server it was accessing.",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request.")
	let res503 = responseDec(responseCode: 503,
							 responseCodeTitle: "Service Unavailable",
							 simplifiedDef: "The service requested of the server is unavaliable temporarily.",
							 responseCodeType: "Server Error",
							 detailedDef:
								"""
The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay. If known, the length of the delay MAY be indicated in a Retry-After header. If no Retry-After is given, the client SHOULD handle the response as it would for a 500 response.
Note: The existence of the 503 status code does not imply that a server must use it when becoming overloaded. Some servers may wish to simply refuse the connection.
""")
	let res504 = responseDec(responseCode: 504,
							 responseCodeTitle: "Gateway Timeout",
							 simplifiedDef: "The server timed out while acting as a gateway for the client.",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out.")
	let res505 = responseDec(responseCode: 505,
							 responseCodeTitle: "HTTP Version Not Supported",
							 simplifiedDef: "The server does not support the HTTP protocol version used in the request.",
							 responseCodeType: "Server Error",
							 detailedDef: "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out.")
	let res506 = responseDec(responseCode: 506,
							 responseCodeTitle: "Variant Also Negotiates (Experimental)",
							 simplifiedDef: "The chosen variant resource is configured to engage in transparent content negotiation itself.",
							 responseCodeType: "Server Error",
							 detailedDef: "The 506 status code indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.")
	let res507 = responseDec(responseCode: 507,
							 responseCodeTitle: "Insufficient Storage (WebDAV)",
							 simplifiedDef: "The server has insufficient storage to hold the data required to complete the request.",
							 responseCodeType: "Server Error",
							 detailedDef: "The 507 (Insufficient Storage) status code means the method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request. This condition is considered to be temporary. If the request that received this status code was the result of a user action, the request MUST NOT be repeated until it is requested by a separate user action.")
	let res508 = responseDec(responseCode: 508,
							 responseCodeTitle: "Loop Detected (WebDAV)",
							 simplifiedDef: "The server detected an infinite loop while processing the request.",
							 responseCodeType: "Server Error",
							 detailedDef: """
								The 508 (Loop Detected) status code indicates that the server terminated an operation because it encountered an infinite loop while processing a request with "Depth: infinity". This status indicates that the entire operation failed.
								""")
	let res509 = responseDec(responseCode: 509,
							 responseCodeTitle: "Bandwidth Limit Exceeded (Apache)",
							 simplifiedDef: "This status code is not specified in any RFCs and is therefore not required to signify any particular response.",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code, while used by many servers, is not specified in any RFCs.")
	let res510 = responseDec(responseCode: 510,
							 responseCodeTitle: "Not Extended",
							 simplifiedDef: "Further extensions to the request are required for the server to fulfill it.",
							 responseCodeType: "Server Error",
							 detailedDef: "The policy for accessing the resource has not been met in the request. The server should send back all the information necessary for the client to issue an extended request. It is outside the scope of this specification to specify how the extensions inform the client.\nIf the 510 response contains information about extensions that were not present in the initial request then the client MAY repeat the request if it has reason to believe it can fulfil the extension policy by modifying the request according to the information provided in the 510 response. Otherwise the client MAY present any entity included in the 510 response to the user, since that entity may include relevant diagnostic information.")
	let res511 = responseDec(responseCode: 511,
							 responseCodeTitle: "Network Authentication Required",
							 simplifiedDef:
								"""
The client needs to authenticate to gain network access.
Intended for use by intercepting proxies used to control access to the network (e.g., "captive portals" used to require agreement to Terms of Service before granting full Internet access via a Wi-Fi hotspot).
""",
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
							 responseCodeTitle: "Network Read Timeout Error",
							 simplifiedDef: "This response is used by some HTTP proxies to signal a network read timeout.",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network read timeout behind the proxy to a client in front of the proxy.")
	let res599 = responseDec(responseCode: 599,
							 responseCodeTitle: "Network Connect Timeout Error",
							 simplifiedDef: "This response is used by some HTTP proxies to signal a network connect timeout.",
							 responseCodeType: "Server Error",
							 detailedDef: "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network connect timeout behind the proxy to a client in front of the proxy.")
}
