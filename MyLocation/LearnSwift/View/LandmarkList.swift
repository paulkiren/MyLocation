//
//  LandmarkList.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//
// refer https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView() {
            List(landmarks ){ landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                       .previewDisplayName(deviceName)
               }
    }
}
