//
//  LandmarkList.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView() {
            List(landmarks ){ landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
