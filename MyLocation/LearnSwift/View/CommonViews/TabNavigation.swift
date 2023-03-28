//
//  TabNavigation.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI
import MapKit

struct TabNavigation: View {
    var body: some View {
        NavigationView {
            TabView {
                LandmarkList()
                    .tabItem {
                        Image(systemName: "person.3")
                    }
                MyLocationMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                    .tabItem {
                        Image(systemName: "location")
                    }
            }
            .navigationTitle("Map My Spot")
            .navigationViewStyle(.stack)
        }
    }
    
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
