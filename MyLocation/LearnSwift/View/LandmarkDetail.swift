//
//  LandmarkDetail.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView().ignoresSafeArea(edges:.top) .frame(height: 300)
            CircleImage().offset(y:-130).padding(.bottom, -130)
            VStack(alignment:.leading) {
                Text("Turtle Rock").font(.title);
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }.font(.subheadline).foregroundColor(.secondary);
                Divider()
                Text("About Tirtle Rock").font(.title2)
                Text("This is the place for discriptive text about turtle rock in Joshua Tree National Park califrnia")
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
