//
//  ContentView.swift
//  Harmonyapp
//
//  Created by Phounphonh on 24/01/2023.
//

import SwiftUI



struct ContentView: View {
    @State private var selectedTab: Tab = .house
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack{
                switch selectedTab {
                case .house:
                    Mainpage()
                case .safari:
                    ListHelpLocation()
                case .doc:
                    ArticleTemoignage()
                case .heart:
                    Favoris()
                }
            }
            CustomTabBar(selectedTab: $selectedTab)
                //.opacity(0.6)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSetting())
    }
}
