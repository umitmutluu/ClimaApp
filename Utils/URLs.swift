//
//  URLs.swift
//  ClimaApp
//
//  Created by Umut Mutlu on 19.09.2022.
//


import Foundation
import CoreLocation

class URLs {
    static let shared = URLs()
    private let searchByLocationUrl = "https://dataservice.accuweather.com/locations/v1/cities/geoposition/search"
    private let searchByCityNameUrl = "https://dataservice.accuweather.com/locations/v1/search"
    private let fetchForecastlocationKeyUrl = "https://dataservice.accuweather.com/forecasts/v1/daily/1day/"
    private let ApiKey   = "?apikey=LTAVyiv6GKBWNGfMtQpbCyEGpoQD1c36&q="
    private let endOfTypeUrl = "&language=en-US&details=false&toplevel=false HTTP/1.1"
    
    
    
    // add parameter language
    func findLocKeyByLocationURL(coordinate: CLLocationCoordinate2D) -> URL {
        return URL(string: searchByLocationUrl + ApiKey + "\(coordinate.latitude)%2C\(coordinate.longitude)&" + endOfTypeUrl)!
    }
    
    func findLocKeyByCityNameURL(cityName: String ) -> URL {
        return URL(string: searchByCityNameUrl + ApiKey + cityName + endOfTypeUrl )!
    }
    
    func fetchForecastUrl(locationKey: String) -> URL {
        return URL(string: fetchForecastlocationKeyUrl + locationKey + ApiKey + endOfTypeUrl )!
    }
    

    
    
    
}
