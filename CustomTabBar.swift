//
//  CustomTabBar.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI
struct TabBarItems: Identifiable {
    var id = UUID()
    var icon: String
    var tab: Tab
}
var tabItems = [
    TabBarItems(icon: "house", tab: .house),
    TabBarItems(icon: "safari", tab: .safari),
    TabBarItems(icon: "doc", tab: .doc),
    TabBarItems(icon: "heart", tab: .heart)
]
enum Tab: String, CaseIterable {
    case house
    case safari
    case doc
    case heart
}

struct CustomTabBar: View {
    @Binding var selectedTab:Tab
    @EnvironmentObject var selectedAvatar: UserSetting
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 350, height: 60)
                .shadow(color: .black.opacity(0.2), radius: 20, x:50, y:30)
            HStack {
                ForEach(tabItems) { item in
                    Button(action: {
                        selectedTab = item.tab
                    }, label: {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 30, height: 30)
                        }
                        .frame(maxWidth: .infinity)
                    })
                    .foregroundStyle(selectedTab == item.tab ? .white : .white)
                    .scaleEffect(item.tab == selectedTab ? 1.4 : 1.0)
                }
            }
            .frame(width: 340, height: 50)
            .background(Color("\(selectedAvatar.color)")
            )
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
        }
        .background(Color.blue.opacity(0))
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
