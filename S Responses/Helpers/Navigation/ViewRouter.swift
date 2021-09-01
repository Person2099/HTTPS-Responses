//
//  ViewRouter.swift
//  S Responses
//
//  Created by Sebastian Keet on 24/8/21.
//

//MARK: Import Dependencies
import SwiftUI

//MARK: ViewRouter Declaration
// ViewRouter is used to define the page that should be in view at the current time.
// To change view alter the ViewRouter().currentPage variable
class ViewRouter: ObservableObject {
	@Published var currentPage: Page = .home // @Published and ObservableObject allow the variable to be updated on views where it is refered to when the currentPage is altered
}

