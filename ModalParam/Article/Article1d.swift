//
//  Articlehomo4.swift
//  Harmonyapp
//
//  Created by Phounphonh on 03/02/2023.
//

import SwiftUI

struct Article1d: View {
    @EnvironmentObject var selectedAvatar: UserSetting
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            VStack {
                Text("Agnelo Vs Ayoub")
                    .fontWeight(.heavy)
                    .padding()
                Image("imagearticlehomo4")
                    .resizable()
                    .frame(width: 300, height: 150)
                ScrollView {
                    Text("""
    Il était une fois, un jeune homme plein d'ambition qui engueule ses formateurs et ses collègues
    
    Et oui ...
    
    Ah bah oui...
    
    Forcement !
    """)
                    .padding()
                }
            }
        }
    }
}

struct Article1d_Previews: PreviewProvider {
    static var previews: some View {
        Article1d()
    }
}
