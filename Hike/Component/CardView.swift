//
//  CardView.swift
//  Hike
//
//  Created by Joseph on 6/27/23.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingBottomSheet = false
    
    func randomImage() {
        repeat  {
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
                    
                    
        imageNumber = randomNumber
        print(randomNumber)
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 53))
                            .fontWeight(.black)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [Color.customGrayLight, Color.customGrayMedium,],
                                    startPoint: .top, endPoint: .bottom
                                )
                            )
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingBottomSheet.toggle()
                        }, label: {
                            CustomButtonView()
                        })
                        .sheet(isPresented: $isShowingBottomSheet, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
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
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.spring(), value: imageNumber)
                    
                }//: 
                
                Button(action: {
                    randomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGreenMedium],
                                startPoint: .top, endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.24, x: 1, y: 2)
                })
                .buttonStyle(GradientButton())
                
                
                
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
