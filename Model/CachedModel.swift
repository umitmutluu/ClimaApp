//
//  CachedModel.swift
//  ClimaApp
//
//  Created by Umut Mutlu on 19.09.2022.
//

import CoreLocation

struct CashedModelForSearch: Codable, Hashable {
    let locationKey: String
    let cityName: String
    
    init(cityName: String, locationKey: String) {
        self.cityName = cityName
        self.locationKey = locationKey
    }
}
