//
//  AnimalGridItemView.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 11/14/21.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//struct AnimalGridItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnimalGridItemView()
//    }
//}
