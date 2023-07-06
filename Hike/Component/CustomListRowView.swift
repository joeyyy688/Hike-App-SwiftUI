//
//  CustomListRowView.swift
//  Hike
//
//  Created by Joseph on 7/5/23.
//

import SwiftUI

struct CustomListRowView: View {
    var iconName: String
    var leadingTitle: String
    var trailingTitle: String
    var iconBackgroundColor: Color
    var urlLink: String?
    
    var body: some View {
        LabeledContent {
            
            if urlLink != nil {
                Link(trailingTitle, destination: URL(string: urlLink!)!)
                    .foregroundColor(.red)
                    .fontWeight(.heavy)
            }else {
                Text(trailingTitle)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(iconBackgroundColor)
                        .frame(width: 32, height: 30)
                    
                    Image(systemName: iconName)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Text(leadingTitle)
                
                
            }
        }//: CUSTOM LABELED CONTENT
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(
                iconName: "apps.iphone",
                leadingTitle: "Application",
                trailingTitle: "Hike",
                iconBackgroundColor: .blue,
                urlLink: "https://www.github/joeyyy688"
            )
        }
            
    }
}
