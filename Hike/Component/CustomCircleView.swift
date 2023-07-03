//
//  CustomCircleView.swift
//  Hike
//
//  Created by Joseph on 7/3/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isGradientAnimating: Bool = false
    
    var body: some View {
        ZStack {
            
            Circle().fill(
                LinearGradient(
                    colors: [.customIndigoMedium, .customSalmonLight],
                    startPoint: isGradientAnimating ? .topLeading : .bottomLeading,
                    endPoint: isGradientAnimating ? .bottomTrailing : .topTrailing
                )
            )
            .onAppear(perform: {
                withAnimation(.linear(duration: 2).repeatForever(), {
                    isGradientAnimating.toggle()
                })
            })
            
            MotionAnimation()
        
        }//: ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
