//
//  Algolia.swift
//  S Responses
//
//  Created by Sebastian Keet on 12/8/21.
//

import Foundation
import AlgoliaSearchClient

let client = SearchClient(appID: "Z3ML31VGYN", apiKey: "b4e9ba5555fca2c8ebd647af5bd154f8")
let index = client.index(withName: "HTTPS Response Codes")
