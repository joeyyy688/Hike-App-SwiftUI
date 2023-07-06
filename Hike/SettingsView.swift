//
//  SettingsView.swift
//  Hike
//
//  Created by Joseph on 7/3/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Image(systemName: "laurel.leading")
                            .font(.system(size: 80, weight: .black))
                        
                        VStack (spacing: -10){
                            Text("HIKE")
                                .font(.system(size: 66, weight: .black))
                            
                            Text("Editor' Choice")
                                .fontWeight(.medium)
                        }
                        
                        
                        
                        Image(systemName: "laurel.trailing")
                            .font(.system(size: 80, weight: .black))
                        
                        Spacer()
                    }//: HSTACK
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .padding(.top, 8)
                    
                    Spacer()
                    
                    Text("Where can you find perfect tracks?")
                        .font(.system(.title, weight: .heavy))
                        .multilineTextAlignment(.center)
                        
                    Spacer()
                    
                    
                    Text("The hike looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \n Find the best day hikes in the app.")
                        .font(.system(.subheadline, weight: .regular))
                        .multilineTextAlignment(.center)
                        .italic()
                    
                    Spacer()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .font(.system(.title3, weight: .heavy))
                        .foregroundColor(.customGreenDark)
                        .multilineTextAlignment(.center)
                        .padding(15)
                }//: VSTACK
                .frame(maxWidth: .infinity)
            }//: SECTION
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("COPYRIGHT © ALL RIGHTS RESERVED")
                    Spacer()
                }
                    .padding(.vertical)
            ) {

                ForEach(data, id: \.self){ info in
                    CustomListRowView(iconName: info.iconName, leadingTitle: info.leadingTitle, trailingTitle: info.trailingTitles, iconBackgroundColor: info.iconBackgroundColor, urlLink: info.urlLink)
                }
            }//: SECTION
        }//: LIST
        
        
    }//: BODY
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
