//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Joseph on 7/3/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            
            .background(
                // if button is pressed change the gradient background to a lighter background
                configuration.isPressed ?
                
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .top, endPoint: .bottom
                )
                
                :
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top, endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
    
    
}
