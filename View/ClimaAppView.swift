//
//  ClimaAppView.swift
//  ClimaApp
//
//  Created by Umut Mutlu on 19.09.2022.
//

import SwiftUI

struct ClimaAppView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
    }
    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
    }
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
        }
        
    }
}

struct ClimaAppView_Previews: PreviewProvider {
    static var previews: some View {
        ClimaAppView()
    }
}
