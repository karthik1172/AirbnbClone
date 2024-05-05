//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Karthik Rashinkar on 24/04/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listings = [Listing] ()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing] ()
    
    init(service: ExploreService) {
        self.service = service
        
        Task {await fetchListing() }
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.featchListing()
            self.listingsCopy = listings
        } catch {
            print("DEBUG: Faild to fetch listings with errors: \(error.localizedDescription)")
        }
        
    }
    
    func updateListingsForLocation() {
        let filteredListing = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() || $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListing.isEmpty ? listingsCopy : filteredListing
    }
}
