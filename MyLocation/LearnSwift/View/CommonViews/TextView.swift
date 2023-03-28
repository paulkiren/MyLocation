//
//  TextView.swift
//  MyLocation
//
//  Created by Kiren Paul on 23/3/2566 BE.
//

import SwiftUI

struct TextView: View {
    var body: some View {
    
        VStack {
            //MapView(coordinate: ).ignoresSafeArea(edges:.top) .frame(height: 300)
           // CircleImage(image: "turtlerock").offset(y:-130).padding(.bottom, -130)
            VStack(alignment:.leading) {
                ZStack {
                   Circle().fill(.green)
                   Circle().fill(.yellow).scaleEffect(0.8)
                   Circle().fill(.orange).scaleEffect(0.6)
                   Circle().fill(.red).scaleEffect(0.4)
                }
                
                Path { path in
                   path.move(to: CGPoint(x: 20, y: 0))
                   path.addLine(to: CGPoint(x: 20, y: 200))
                   path.addLine(to: CGPoint(x: 220, y: 200))
                   path.addLine(to: CGPoint(x: 220, y: 0))
                }
                .fill(
                   .linearGradient(
                       Gradient(colors: [.green, .blue]),
                       startPoint: .init(x: 0.5, y: 0),
                       endPoint: .init(x: 0.5, y: 0.5)
                   )
                )
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

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
