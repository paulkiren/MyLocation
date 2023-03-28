//
//  MyLocationMap.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI
import UIKit
import MapKit
import CoreLocation
var locationManager: CLLocationManager?
struct MyLocationMap: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
            setRegion(coordinate)
        }
    }
    private func setRegion(_ coordinate:CLLocationCoordinate2D) {
       
        region = MKCoordinateRegion(center: coordinate, span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MyLocationMap_Previews: PreviewProvider {
    static var previews: some View {
        MyLocationMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
