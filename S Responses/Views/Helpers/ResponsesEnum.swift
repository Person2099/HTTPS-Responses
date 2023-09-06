//
//  ResponsesEnum.swift
//  HTTPS Responses
//
//  Created by Sebastian Keet on 6/9/2023.
//

import SwiftUI

enum ResponsesEnum: String, CaseIterable, Identifiable {
    case r100
    case r101
    case r102
    case r200
    case r201
    case r202
    case r203
    case r204
    case r205
    case r206
    case r207
    case r208
    case r226
    case r300
    case r301
    case r302
    case r303
    case r304
    case r305
    case r306
    case r307
    case r308
    case r400
    case r401
    case r402
    case r403
    case r404
    case r405
    case r406
    case r407
    case r408
    case r409
    case r410
    case r411
    case r412
    case r413
    case r414
    case r415
    case r416
    case r417
    case r418
    case r420
    case r422
    case r423
    case r424
    case r425
    case r426
    case r428
    case r429
    case r431
    case r444
    case r449
    case r450
    case r451
    case r499
    case r500
    case r501
    case r502
    case r503
    case r504
    case r505
    case r506
    case r507
    case r508
    case r509
    case r510
    case r511
    case r598
    case r599
    var id: String {
        return responseCode
    }
    
    var responseCode: String {
        return self.rawValue.replacingOccurrences(of: "r", with: "")
    }
    
    var responseCodeTitle: String {
        switch self {
        case .r100:
            return "Continue"
        case .r101:
            return "Switching Protocols"
        case .r102:
            return "Processing (WebDAV)"
        case .r200:
            return "OK"
        case .r201:
            return "Created"
        case .r202:
            return "Accepted"
        case .r203:
            return "Non-Authoritative Information"
        case .r204:
            return "No Content"
        case .r205:
            return "Reset Content"
        case .r206:
            return "Partial Content"
        case .r207:
            return "Multi-Status (WebDAV)"
        case .r208:
            return "Already Reported (WebDAV)"
        case .r226:
            return "IM Used"
        case .r300:
            return "Multiple Choices"
        case .r301:
            return "Moved Permanently"
        case .r302:
            return "Found"
        case .r303:
            return "See Other"
        case .r304:
            return "Not Modified"
        case .r305:
            return "Use Proxy"
        case .r306:
            return "(Unused)"
        case .r307:
            return "Temporary Redirect"
        case .r308:
            return "Permanent Redirect (experimental)"
        case .r400:
            return "Bad Request"
        case .r401:
            return "Unauthorised"
        case .r402:
            return "Payment Required"
        case .r403:
            return "Forbidden"
        case .r404:
            return "Not Found"
        case .r405:
            return "Method Not Allowed"
        case .r406:
            return "Not Acceptable"
        case .r407:
            return "Proxy Authentication Required"
        case .r408:
            return "Request Timeout"
        case .r409:
            return "Conflict"
        case .r410:
            return "Gone"
        case .r411:
            return "Length Required"
        case .r412:
            return "Precondition Failed"
        case .r413:
            return "Request Entity Too Large"
        case .r414:
            return "Request-URI Too Long"
        case .r415:
            return "Unsupported Media Type"
        case .r416:
            return "Requested Range Not Satisfiable"
        case .r417:
            return "Expectation Failed"
        case .r418:
            return "I'm A Teapot (RFC 2324)"
        case .r420:
            return "Enhance Your Calm (Twitter/X)"
        case .r422:
            return "Unprocessable Entity (WebDAV)"
        case .r423:
            return "Locked (WebDAV)"
        case .r424:
            return "Failed Dependency (WebDAV)"
        case .r425:
            return "Reserved for WebDAV"
        case .r426:
            return "Upgrade Required"
        case .r428:
            return "Precondition Required"
        case .r429:
            return "Too Many Requests"
        case .r431:
            return "Request Header Fields Too Large"
        case .r444:
            return "No Response (Nginx)"
        case .r449:
            return "Retry With (Microsoft)"
        case .r450:
            return "Blocked by Windows Parental Controls (Microsoft)"
        case .r451:
            return "Unavailable For Legal Reasons"
        case .r499:
            return "Client Closed Request (Nginx)"
        case .r500:
            return "Internal Server Error"
        case .r501:
            return "Not Implemented"
        case .r502:
            return "Bad Gateway"
        case .r503:
            return "Service Unavailable"
        case .r504:
            return "Gateway Timeout"
        case .r505:
            return "HTTP Version Not Supported"
        case .r506:
            return "Variant Also Negotiates (Experimental)"
        case .r507:
            return "Insufficient Storage (WebDAV)"
        case .r508:
            return "Loop Detected (WebDAV)"
        case .r509:
            return "Bandwidth Limit Exceeded (Apache)"
        case .r510:
            return "Not Extended"
        case .r511:
            return "Network Authentication Required"
        case .r598:
            return "Network read timeout error"
        case .r599:
            return "Network connect timeout error"
        }
    }
    
    var simplifiedDef: String {
        switch self {
        case .r100:
            return "The request should be continued. This response indicates that the first part of the request is being processed and the rest of the request should be completed."
        case .r101:
            return "The client has asked the server to switch protocols and the server is acknowledging that it will do so."
        case .r102:
            return "As a WebDAV request may contain many sub-requests involving file operations, it may take a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet."
        case .r200:
            return "The request has succeeded. This response may also contain information based on the request."
        case .r201:
            return "The request has been fulfilled and resulted in a new resource being created."
        case .r202:
            return "The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it may be disallowed when processing actually takes place."
        case .r203:
            return "The provided response includes third party content and is not directly provided by the entity it was requested from. The set presented MAY be a subset or superset of the original version."
        case .r204:
            return "The server successfully processed the request, but is not returning any content."
        case .r205:
            return "The server has fulfilled the request and is recomending that the document view which caused the request to be sent is reset."
        case .r206:
            return "The server is delivering only part of the resource due to a range header sent by the client."
        case .r207:
            return "This response contains status' for multiple operations."
        case .r208:
            return "The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again."
        case .r226:
            return "The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance."
        case .r300:
            return "This response indicates that there are multiple versions, or choices, of the requested data and is providing the client with the ability to choose which one to use."
        case .r301:
            return "This and all future requests should be directed to the given URI."
        case .r302:
            return "The requested resource resides temporarily under a different URI."
        case .r303:
            return "The response to the request can be found under another URI."
        case .r304:
            return "Indicates the resource has not been modified since last requested."
        case .r305:
            return "The requested resource MUST be accessed through the proxy given by the Location field."
        case .r306:
            return "The 306 status code is no longer used, and the code is reserved."
        case .r307:
            return "The requested resource resides temporarily under a different URI."
        case .r308:
            return "The request, and all future requests should be repeated using another URI."
        case .r400:
            return "The request could not be understood by the server."
        case .r401:
            return "The request requires user authentication"
        case .r402:
            return "This code is reserved for future use."
        case .r403:
            return "The server understood the request but is refusing to fulfill it."
        case .r404:
            return "The server has not found anything matching the Request."
        case .r405:
            return "The method specified in the Request-Line is not allowed."
        case .r406:
            return "The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request."
        case .r407:
            return "The client must first authenticate itself with the proxy."
        case .r408:
            return "The server timed out waiting for the request."
        case .r409:
            return "This response code indicates that the request could not be processed because of conflict in the request."
        case .r410:
            return "The resource that was requested is no longer avaliable at the location specified."
        case .r411:
            return "The request was denied due to the content-length header field being missing."
        case .r412:
            return "The condition defined by the If-Unmodified-Since or If-None-Match headers is not fulfilled."
        case .r413:
            return "The server denied the request as the request was too large in size."
        case .r414:
            return "The URI provided was too long for the server to process."
        case .r415:
            return "The request entity has a media type which the server or resource does not support."
        case .r416:
            return "The client has asked for a portion of the file, but the server cannot supply that portion."
        case .r417:
            return "The server cannot meet the requirements of the Expect request-header field."
        case .r418:
            return "This response code was defined in 1998 as an April Fools' Joke"
        case .r420:
            return "This response code is a reference to 'Demolition Man' and is used exclusively by twitter API's when the client is being rate limited. (Similar to 429)"
        case .r422:
            return "The request was well-formed however the server was unable to process the contained instructions."
        case .r423:
            return "The resource that was requested is locked."
        case .r424:
            return "The request failed due to failure of a previous request which it depended on."
        case .r425:
            return "This status code is reserved for use by WebDAV but is not yet in use."
        case .r426:
            return "The client should switch to a different protocol such as TLS/1.0."
        case .r428:
            return "The origin server requires the request to be conditional."
        case .r429:
            return "The client has sent too many requests in a given amount of time."
        case .r431:
            return "The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large."
        case .r444:
            return "The server closed the connection with no explination."
        case .r449:
            return "The request should be retried after completing the indicated action"
        case .r450:
            return "Blocked by Windows Parental Controls (Microsoft)"
        case .r451:
            return "Unavailable For Legal Reasons"
        case .r499:
            return "Client Closed Request (Nginx)"
        case .r500:
            return "The server encountered an error and could not complete the request."
        case .r501:
            return "The server has not implemented the functionality to process the request."
        case .r502:
            return "The server received an invalid response from the server it was accessing."
        case .r503:
            return "The service requested of the server is unavaliable temporarily."
        case .r504:
            return "The server timed out while acting as a gateway for the client."
        case .r505:
            return "The server does not support the HTTP protocol version used in the request."
        case .r506:
            return "The chosen variant resource is configured to engage in transparent content negotiation itself."
        case .r507:
            return "The server has insufficient storage to hold the data required to complete the request."
        case .r508:
            return "The server detected an infinite loop while processing the request."
        case .r509:
            return "This status code is not specified in any RFCs and is therefore not required to signify any particular response."
        case .r510:
            return "Further extensions to the request are required for the server to fulfill it."
        case .r511:
            return """
The client needs to authenticate to gain network access.\nIntended for use by intercepting proxies used to control access to the network (e.g., 'captive portals' used to require agreement to Terms of Service before granting full Internet access via a Wi-Fi hotspot)
"""
        case .r598:
            return "This response is used by some HTTP proxies to signal a network read timeout."
        case .r599:
            return "This response is used by some HTTP proxies to signal a network connect timeout."
        }
    }
    
    var responseCodeType: String {
        let char = responseCode.first
        if char == "1" {
            return "Informational"
        } else if char == "2" {
            return "Success"
        } else if char == "3" {
            return "Redirection"
        } else if char == "4" {
            return "Client Error"
        } else if char == "5" {
            return "Server Error"
        } else {
            //logger.fault("char not a responseCodeType")
            return "That's not supposed to happen!"
        }
    }
    
    var responseCodeTypeGramaticalAnA: String {
        let char = responseCode.first
        if char == "1" {
            return "an"
        } else {
            return "a"
        }
    }
    
    var responseCodeColour: Color {
        let char = responseCode.first
        if char == "1" {
            return .gray
        } else if char == "2" {
            return .green
        } else if char == "3" {
            return .blue
        } else if char == "4" {
            return .red
        } else if char == "5" {
            return .orange
        } else {
            return .red
        }
    }
    
    var detailedDef: String {
        switch self {
        case .r100:
            return "The client SHOULD continue with its request. This interim response is used to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the request or, if the request has already been completed, ignore this response. The server MUST send a final response after the request has been completed."
        case .r101:
            return "The server understands and is willing to comply with the client's request, for a change in the application protocol being used on this connection. The server will switch protocols to those defined by the response's.\nThe protocol SHOULD be switched only when it is advantageous to do so. For example, switching to a newer version of HTTP is advantageous over older versions, and switching to a real-time, synchronous protocol might be advantageous when delivering resources that use such features."
        case .r102:
            return "The 102 (Processing) status code is an interim response used to inform the client that the server has accepted the complete request, but has not yet completed it. This status code SHOULD only be sent when the server has a reasonable expectation that the request will take significant time to complete. As guidance, if a method is taking longer than 20 seconds (a reasonable, but arbitrary value) to process the server SHOULD return a 102 (Processing) response. The server MUST send a final response after the request has been completed."
        case .r200:
            return "The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:\n• GET an entity corresponding to the requested resource is sent in the response;\n• HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;\n• POST an entity describing or containing the result of the action;\n• TRACE an entity containing the request message as received by the end server."
        case .r201:
            return "The request has been fulfilled and resulted in a new resource being created. The response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. . The origin server MUST create the resource before returning the 201 status code. If the action cannot be carried out immediately, the server SHOULD respond with 202 (Accepted) response instead."
        case .r202:
            return "The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place.\nThe 202 response is intentionally non-committal. Its purpose is to allow a server to accept a request for some other process without requiring that the user agent's connection to the server persist until the process is completed. The entity returned with this response SHOULD include an indication of the request's current status."
        case .r203:
            return "The returned metainformation in the entity-header is not the definitive set as available from the origin server, but is gathered from a local or a third-party copy. The set presented MAY be a subset or superset of the original version. For example, including local annotation information about the resource might result in a superset of the metainformation known by the origin server. Use of this response code is not required and is only appropriate when the response would otherwise be 200 (OK)."
        case .r204:
            return "The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. The response MAY include new or updated metainformation in the form of entity-headers, which if present SHOULD be associated with the requested variant.\nIf the client is a user agent, it SHOULD NOT change its document view from that which caused the request to be sent. This response is primarily intended to allow input for actions to take place without causing a change to the user agent's active document view, although any new or updated metainformation SHOULD be applied to the document currently in the user agent's active view.\nThe 204 response MUST NOT include a message-body, and thus is always terminated by the first empty line after the header fields."
        case .r205:
            return "The server has fulfilled the request and the user agent SHOULD reset the document view which caused the request to be sent. This response is primarily intended to allow input for actions to take place via user input, followed by a clearing of the form in which the input is given so that the user can easily initiate another input action. The response MUST NOT include an entity."
        case .r206:
            return "The server has fulfilled the partial GET request for the resource. The request MUST have included a Range header field indicating the desired range, and MAY have included an If-Range header field  to make the request conditional.\nThe response MUST include the following header fields:\n• Either a Content-Range header field  indicating the range included with this response, or a multipart/byteranges Content-Type including Content-Range fields for each part. If a Content-Length header field is present in the response, its value MUST match the actual number of OCTETs transmitted in the message-body.\n• Date\n• ETag and/or Content-Location, if the header would have been sent in a 200 response to the same request\n• Expires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant\nIf the 206 response is the result of an If-Range request that used a strong cache validator, the response SHOULD NOT include other entity-headers. If the response is the result of an If-Range request that used a weak validator, the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers. Otherwise, the response MUST include all of the entity-headers that would have been returned with a 200 (OK) response to the same request.\nA cache MUST NOT combine a 206 response with other previously cached content if the ETag or Last-Modified headers do not match exactly.\nA cache that does not support the Range and Content-Range headers MUST NOT cache 206 (Partial) responses."
        case .r207:
            return "The 207 (Multi-Status) status code provides status for multiple independent operations (see section 11 for more information)."
        case .r208:
            return "The 208 (Already Reported) status code can be used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly. For each binding to a collection inside the request's scope, only one will be reported with a 200 status, while subsequent DAV:response elements for all other bindings will use the 208 status, and no DAV:response elements for their descendants are included."
        case .r226:
            return "The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance. The actual current instance might not be available except by combining this response with other previous or future responses, as appropriate for the specific instance-manipulation(s). If so, the headers of the resulting instance are the result of combining the headers from the status-226 response and the other instances, following the rules in the HTTP/1.1 specification.\nThe request MUST have included an A-IM header field listing at least one instance-manipulation. The response MUST include an Etag header field giving the entity tag of the current instance.\nA response received with a status code of 226 MAY be stored by a cache and used in reply to a subsequent request, subject to the HTTP expiration mechanism and any Cache-Control headers.\nA response received with a status code of 226 MAY be used by a cache, in conjunction with a cache entry for the base instance, to create a cache entry for the current instance."
        case .r300:
            return "The requested resource corresponds to any one of a set of representations, each with its own specific location, and agent- driven negotiation information (section 12) is being provided so that the user (or user agent) can select a preferred representation and redirect its request to that location.\nUnless it was a HEAD request, the response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content- Type header field. Depending upon the format and the capabilities of the user agent, selection of the most appropriate choice MAY be performed automatically. However, this specification does not define any standard for such automatic selection.\nIf the server has a preferred choice of representation, it SHOULD include the specific URI for that representation in the Location field; user agents MAY use the Location field value for automatic redirection. This response is cacheable unless indicated otherwise."
        case .r301:
            return "The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. Clients with link editing capabilities ought to automatically re-link references to the Request-URI to one or more of the new references returned by the server, where possible. This response is cacheable unless indicated otherwise.\nThe new permanent URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).\nIf the 301 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.\nNote: When automatically redirecting a POST request after receiving a 301 status code, some existing HTTP/1.0 user agents will erroneously change it into a GET request."
        case .r302:
            return "The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.\nThe temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).\nIf the 302-status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued."
        case .r303:
            return "The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource. This method exists primarily to allow the output of a POST-activated script to redirect the user agent to a selected resource. The new URI is not a substitute reference for the originally requested resource. The 303 response MUST NOT be cached, but the response to the second (redirected) request might be cacheable.\nThe different URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).\nNote: Many pre-HTTP/1.1 user agents do not understand the 303 status. When interoperability with such clients is a concern, the 302 status code may be used instead, since most user agents react to a 302 response as described here for 303."
        case .r304:
            return "If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields.\nThe response MUST include the following header fields:\nDate, unless its omission is required by section 14.18.1\nIf a clockless origin server obeys these rules, and proxies and clients add their own Date to any response received without one (as already specified by [RFC 2068], section 14.19), caches will operate correctly.\nETag and/or Content-Location, if the header would have been sent in a 200 response to the same request\nExpires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant\nIf the conditional GET used a strong cache validator (see section 13.3.3), the response SHOULD NOT include other entity-headers. Otherwise (i.e., the conditional GET used a weak validator), the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers.\nIf a 304 response indicates an entity not currently cached, then the cache MUST disregard the response and repeat the request without the conditional.\nIf a cache uses a received 304 response to update a cache entry, the cache MUST update the entry to reflect any new field values given in the response."
        case .r305:
            return "The requested resource MUST be accessed through the proxy given by the Location field. The Location field gives the URI of the proxy. The recipient is expected to repeat this single request via the proxy. 305 responses MUST only be generated by origin servers.\nNote: RFC 2068 was not clear that 305 was intended to redirect a single request, and to be generated by origin servers only. Not observing these limitations has significant security consequences."
        case .r306:
            return "The 306 status code was used in a previous version of the specification, is no longer used, and the code is reserved."
        case .r307:
            return "The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.\nThe temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s) , since many pre-HTTP/1.1 user agents do not understand the 307 status. Therefore, the note SHOULD contain the information necessary for a user to repeat the original request on the new URI.\nIf the 307 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued."
        case .r308:
            return "The request, and all future requests should be repeated using another URI. 307 and 308 (as proposed) parallel the behaviours of 302 and 301, but do not require the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly. This response code is considered experimental."
        case .r400:
            return "The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications."
        case .r401:
            return "The request requires user authentication. The response MUST include a WWW-Authenticate header field (section 14.47) containing a challenge applicable to the requested resource. The client MAY repeat the request with a suitable Authorization header field (section 14.8). If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials. If the 401 response contains the same challenge as the prior response, and the user agent has already attempted authentication at least once, then the user SHOULD be presented the entity that was given in the response, since that entity might include relevant diagnostic information."
        case .r402:
            return "Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, but that has not happened, and this code is not usually used."
        case .r403:
            return "The server understood the request but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated. If the request method was not HEAD and the server wishes to make public why the request has not been fulfilled, it SHOULD describe the reason for the refusal in the entity. If the server does not wish to make this information available to the client, the status code 404 (Not Found) can be used instead."
        case .r404:
            return "The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. The 410 (Gone) status code SHOULD be used if the server knows, through some internally configurable mechanism, that an old resource is permanently unavailable and has no forwarding address. This status code is commonly used when the server does not wish to reveal exactly why the request has been refused, or when no other response is applicable."
        case .r405:
            return "The method specified in the Request-Line is not allowed for the resource identified by the Request-URI. The response MUST include an Allow header containing a list of valid methods for the requested resource."
        case .r406:
            return "The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request.\nUnless it was a HEAD request, the response SHOULD include an entity containing a list of available entity characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content-Type header field. Depending upon the format and the capabilities of the user agent, selection of the most appropriate choice MAY be performed automatically. However, this specification does not define any standard for such automatic selection."
        case .r407:
            return "This code is similar to 401 (Unauthorized), but indicates that the client must first authenticate itself with the proxy. The proxy MUST return a Proxy-Authenticate header field (section 14.33) containing a challenge applicable to the proxy for the requested resource. The client MAY repeat the request with a suitable Proxy-Authorization header field (section 14.34). HTTP access authentication is explained in 'HTTP Authentication: Basic and Digest Access Authentication'."
        case .r408:
            return "The client did not produce a request within the time that the server was prepared to wait. The client MAY repeat the request without modifications at any later time."
        case .r409:
            return "The request could not be completed due to a conflict with the current state of the resource. This code is only allowed in situations where it is expected that the user might be able to resolve the conflict and resubmit the request. The response body SHOULD include enough information for the user to recognize the source of the conflict. Ideally, the response entity would include enough information for the user or user agent to fix the problem; however, that might not be possible and is not required.\nConflicts are most likely to occur in response to a PUT request. For example, if versioning were being used and the entity being PUT included changes to a resource which conflict with those made by an earlier (third-party) request, the server might use the 409 response to indicate that it can't complete the request. In this case, the response entity would likely contain a list of the differences between the two versions in a format defined by the response Content-Type."
        case .r410:
            return "The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval. If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 (Not Found) SHOULD be used instead. This response is cacheable unless indicated otherwise.\nThe 410 response is primarily intended to assist the task of web maintenance by notifying the recipient that the resource is intentionally unavailable and that the server owners desire that remote links to that resource be removed. Such an event is common for limited-time, promotional services and for resources belonging to individuals no longer working at the server's site. It is not necessary to mark all permanently unavailable resources as 'gone' or to keep the mark for any length of time -- that is left to the discretion of the server owner."
        case .r411:
            return "The server refuses to accept the request without a defined Content- Length. The client MAY repeat the request if it adds a valid Content-Length header field containing the length of the message-body in the request message."
        case .r412:
            return "The precondition given in one or more of the request-header fields evaluated to false when it was tested on the server. This response code allows the client to place preconditions on the current resource metainformation (header field data) and thus prevent the requested method from being applied to a resource other than the one intended."
        case .r413:
            return "The server is refusing to process a request because the request entity is larger than the server is willing or able to process. The server MAY close the connection to prevent the client from continuing the request.\nIf the condition is temporary, the server SHOULD include a Retry- After header field to indicate that it is temporary and after what time the client MAY try again."
        case .r414:
            return "The server is refusing to service the request because the Request-URI is longer than the server is willing to interpret. This rare condition is only likely to occur when a client has improperly converted a POST request to a GET request with long query information, when the client has descended into a URI 'black hole' of redirection (e.g., a redirected URI prefix that points to a suffix of itself), or when the server is under attack by a client attempting to exploit security holes present in some servers using fixed-length buffers for reading or manipulating the Request-URI."
        case .r415:
            return "The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource for the requested method."
        case .r416:
            return "A server SHOULD return a response with this status code if a request included a Range request-header field (section 14.35), and none of the range-specifier values in this field overlap the current extent of the selected resource, and the request did not include an If-Range request-header field. (For byte-ranges, this means that the first- byte-pos of all of the byte-range-spec values were greater than the current length of the selected resource.)\nWhen this status code is returned for a byte-range request, the response SHOULD include a Content-Range entity-header field specifying the current length of the selected resource (see section 14.16). This response MUST NOT use the multipart/byteranges content- type."
        case .r417:
            return "The expectation given in an Expect request-header field (see section 14.20) could not be met by this server, or, if the server is a proxy, the server has unambiguous evidence that the request could not be met by the next-hop server."
        case .r418:
            return "This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers. However, known implementations do exist. An Nginx HTTP server uses this code to simulate goto-like behaviour in its configuration."
        case .r420:
            return "Returned by the Twitter Search and Trends API when the client is being rate limited. The text is a quote from 'Demolition Man' and the '420' code is likely a reference to this number's association with marijuana. Other services may wish to implement the 429 Too Many Requests response code instead."
        case .r422:
            return "The 422 (Unprocessable Entity) status code means the server understands the content type of the request entity (hence a 415(Unsupported Media Type) status code is inappropriate), and the syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable to process the contained instructions. For example, this error condition may occur if an XML request body contains well-formed (i.e., syntactically correct), but semantically erroneous, XML instructions."
        case .r423:
            return "The 423 (Locked) status code means the source or destination resource of a method is locked. This response SHOULD contain an appropriate precondition or postcondition code, such as 'lock-token-submitted' or 'no-conflicting-lock'."
        case .r424:
            return "The 424 (Failed Dependency) status code means that the method could not be performed on the resource because the requested action depended on another action and that action failed. For example, if a command in a PROPPATCH method fails, then, at minimum, the rest of the commands will also fail with 424 (Failed Dependency)."
        case .r425:
            return "Defined in drafts of 'WebDAV Advanced Collections Protocol', but not present in 'Web Distributed Authoring and Versioning (WebDAV) Ordered Collections Protocol'."
        case .r426:
            return "Reliable, interoperable negotiation of Upgrade features requires an unambiguous failure signal. The 426 Upgrade Required status code allows a server to definitively state the precise protocol extensions a given resource must be served with."
        case .r428:
            return "The 428 status code indicates that the origin server requires the request to be conditional.\nIts typical use is to avoid the 'lost update' problem, where a client GETs a resource's state, modifies it, and PUTs it back to the server, when meanwhile a third party has modified the state on the server, leading to a conflict. By requiring requests to be conditional, the server can assure that clients are working with the correct copies.\nResponses using this status code SHOULD explain how to resubmit the request successfully.\nThe 428 status code is optional; clients cannot rely upon its use to prevent 'lost update' conflicts."
        case .r429:
            return "The 429 status code indicates that the user has sent too many requests in a given amount of time ('rate limiting').\nThe response representations SHOULD include details explaining the condition, and MAY include a Retry-After header indicating how long to wait before making a new request.\nWhen a server is under attack or just receiving a very large number of requests from a single party, responding to each with a 429 status code will consume resources.\nTherefore, servers are not required to use the 429 status code; when limiting resource usage, it may be more appropriate to just drop connections, or take other steps."
        case .r431:
            return "The 431 status code indicates that the server is unwilling to process the request because its header fields are too large. The request MAY be resubmitted after reducing the size of the request header fields.\nIt can be used both when the set of request header fields in total are too large, and when a single header field is at fault. In the latter case, the response representation SHOULD specify which header field was too large.\nServers are not required to use the 431 status code; when under attack, it may be more appropriate to just drop connections, or take other steps."
        case .r444:
            return "An Nginx HTTP server extension. The server returns no information to the client and closes the connection (useful as a deterrent for malware)."
        case .r449:
            return "A Microsoft extension. The request should be retried after performing the appropriate action."
        case .r450:
            return "A Microsoft extension. This error is given when Windows Parental Controls are turned on and are blocking access to the given webpage."
        case .r451:
            return "Intended to be used when resource access is denied for legal reasons, e.g. censorship or government-mandated blocked access. A reference to the 1953 dystopian novel Fahrenheit 451, where books are outlawed, and the autoignition temperature of paper, 451°F."
        case .r499:
            return "An Nginx HTTP server extension. This code is introduced to log the case when the connection is closed by client while HTTP server is processing its request, making server unable to send the HTTP header back."
        case .r500:
            return "The server encountered an unexpected condition which prevented it from fulfilling the request."
        case .r501:
            return "The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource."
        case .r502:
            return "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request."
        case .r503:
            return "The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay. If known, the length of the delay MAY be indicated in a Retry-After header. If no Retry-After is given, the client SHOULD handle the response as it would for a 500 response.\nNote: The existence of the 503 status code does not imply that a server must use it when becoming overloaded. Some servers may wish to simply refuse the connection."
        case .r504:
            return "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out."
        case .r505:
            return "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request.\nNote: Note to implementors: some deployed proxies are known to return 400 or 500 when DNS lookups time out."
        case .r506:
            return "The 506 status code indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process."
        case .r507:
            return "The 507 (Insufficient Storage) status code means the method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request. This condition is considered to be temporary. If the request that received this status code was the result of a user action, the request MUST NOT be repeated until it is requested by a separate user action."
        case .r508:
            return "The 508 (Loop Detected) status code indicates that the server terminated an operation because it encountered an infinite loop while processing a request with 'Depth: infinity'. This status indicates that the entire operation failed."
        case .r509:
            return "This status code, while used by many servers, is not specified in any RFCs."
        case .r510:
            return "The policy for accessing the resource has not been met in the request. The server should send back all the information necessary for the client to issue an extended request. It is outside the scope of this specification to specify how the extensions inform the client.\nIf the 510 response contains information about extensions that were not present in the initial request then the client MAY repeat the request if it has reason to believe it can fulfil the extension policy by modifying the request according to the information provided in the 510 response. Otherwise the client MAY present any entity included in the 510 response to the user, since that entity may include relevant diagnostic information."
        case .r511:
            return "The 511 status code indicates that the client needs to authenticate to gain network access.\nThe response representation SHOULD contain a link to a resource that allows the user to submit credentials (e.g. with a HTML form).\nNote that the 511 response SHOULD NOT contain a challenge or the login interface itself, because browsers would show the login interface as being associated with the originally requested URL, which may cause confusion.\nThe 511 status SHOULD NOT be generated by origin servers; it is intended for use by intercepting proxies that are interposed as a means of controlling access to the network.\nResponses with the 511 status code MUST NOT be stored by a cache.\nThe 511 status code is designed to mitigate problems caused by 'captive portals' to software (especially non-browser agents) that is expecting a response from the server that a request was made to, not the intervening network infrastructure. It is not intended to encouraged deployment of captive portals, only to limit the damage caused by them.\nA network operator wishing to require some authentication, acceptance of terms or other user interaction before granting access usually does so by identifing clients who have not done so ('unknown clients') using their MAC addresses.\nUnknown clients then have all traffic blocked, except for that on TCP port 80, which is sent to a HTTP server (the 'login server') dedicated to 'logging in' unknown clients, and of course traffic to the login server itself.\nIn common use, a response carrying the 511 status code will not come from the origin server indicated in the request's URL. This presents many security issues; e.g., an attacking intermediary may be inserting cookies into the original domain's name space, may be observing cookies or HTTP authentication credentials sent from the user agent, and so on.\nHowever, these risks are not unique to the 511 status code; in other words, a captive portal that is not using this status code introduces the same issues.\nAlso, note that captive portals using this status code on an SSL or TLS connection (commonly, port 443) will generate a certificate error on the client."
        case .r598:
            return "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network read timeout behind the proxy to a client in front of the proxy."
        case .r599:
            return "This status code is not specified in any RFCs, but is used by some HTTP proxies to signal a network connect timeout behind the proxy to a client in front of the proxy."
        }
    }
}

