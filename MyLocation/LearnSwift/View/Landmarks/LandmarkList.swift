//
//  LandmarkList.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//
// refer https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    var filterLandMarks: [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        
        NavigationView() {
            List {
                Toggle(isOn: $showFavoritesOnly ) {
                    Text("Favorites only")
                }
                ForEach(filterLandMarks){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList() .environmentObject(ModelData())
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                   LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//                       .previewDisplayName(deviceName)
//               }
    }
}
