//
//  CardView.swift
//  Hike
//
//  Created by Joseph on 6/27/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle().fill(
                    LinearGradient(
                        colors: [Color("ColorIndigoMedium"),Color("ColorSalmonLight")],
                        startPoint: .topLeading, endPoint: .bottomTrailing
                    )
                )
                .frame(width: 256, height: 256)
                
                
                Image("image-1")
                    .resizable()
                .scaledToFit()
                
            } //: ZSTACK
        }// ZSTACK - CARD
        .frame(width: 320, height: 600)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
