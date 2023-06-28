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
            
            VStack {
                
                VStack(alignment: .leading) {
                    
                    HStack (spacing: 30){
                        Text("Hiking")
                            .font(.system(size: 53))
                            .fontWeight(.black)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [Color.customGrayLight, Color.customGrayMedium,],
                                    startPoint: .top, endPoint: .bottom
                                )
                            )
                        
                        Button(action: {
                            
                        }, label: {
                            CustomButtonView()
                        })
                    }//: HSTACK
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                        .fontWeight(.light)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        
                }//: VSTACK
                .padding(.horizontal, 30)
                
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
                    
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Explore More")
                })
                .buttonStyle(.borderedProminent)
                
                
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
