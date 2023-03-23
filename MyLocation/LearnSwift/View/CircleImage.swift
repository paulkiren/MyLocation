//
//  CircleImage.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
        Image("turtlerock").resizable(capInsets: EdgeInsets(top: 1.0, leading: 0.0, bottom: 1.0, trailing: 1.0), resizingMode: .tile).aspectRatio(contentMode: .fit).padding(.horizontal, 14.0).clipShape(Circle()).overlay{
            Circle().stroke(.white, lineWidth: 4)
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
            
    }
}
