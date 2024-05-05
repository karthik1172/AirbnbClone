//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Karthik Rashinkar on 24/04/24.
//

import Foundation

class ExploreService {
    func featchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
