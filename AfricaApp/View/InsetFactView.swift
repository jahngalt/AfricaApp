//
//  InserFactView.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 10/31/21.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
        } //: Box
        
    }
}

//struct InserFactView_Previews: PreviewProvider {
//    static var previews: some View {
//        InsetFactView()
//    }
//}
