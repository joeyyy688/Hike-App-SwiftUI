//
//  MotionAnimation.swift
//  Hike
//
//  Created by Joseph on 7/3/23.
//

import SwiftUI

struct MotionAnimation: View {
    @State private var generateRandomCircleCount = Int.random(in: 6...12)
    @State private var isAnimating = false
    
    
    func randomCoordinate() -> CGFloat{
        return CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 4...80)
    }
    
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in:  0.1 ... 2.0))
    }
    
    func randomSpeed() -> Double{
        return Double.random(in: 0.05 ... 1.0)
    }
    
    func randomDelay() -> Double{
        return Double.random(in: 0 ... 2.0)
    }
    
    
    
    var body: some View {
        ZStack{
            ForEach(0...generateRandomCircleCount, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize(), height: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1.0)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25).repeatForever().speed(randomSpeed()).delay(randomDelay()), {
                            isAnimating = true
                        })
                    })
            }
        }//: ZSTACK
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
    
}

struct MotionAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimation()
            .background(
                Circle().fill(.teal)
            )
            
    }
}
