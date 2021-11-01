//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 10/31/21.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in 
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: Loop
            } //: HStack
        } //: ScrollView
    }
}

//struct InsetGalleryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InsetGalleryView()
//    }
//}
