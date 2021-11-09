//
//  MavAnnotationView.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 11/5/21.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                //.fill(Color.accentColor)
                .strokeBorder(Color.accentColor,lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 1)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
                
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        } //: ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

//struct MavAnnotationView_Previews: PreviewProvider {
//    static var previews: some View {
//        MavAnnotationView(location: <#NationalParkLocation#>)
//            .previewLayout(.sizeThatFits)
//            .padding()
//
//    }
//}
