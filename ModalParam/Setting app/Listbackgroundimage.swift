//
//  Listbackgroundimage.swift
//  Harmonyapp
//
//  Created by Phounphonh on 02/02/2023.
//

import SwiftUI

struct Listbackgroundimage: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedAvatar: UserSetting
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Button("") {
                    dismiss()
                }
                HStack(spacing: 30) {
                    Button(action: {
                        selectedAvatar.color = "Color1"
                    }, label: {
                        Circle()
                            .fill(Color("Color1"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                    Button(action: {
                        selectedAvatar.color = "Color2"
                    }, label: {
                        Circle()
                            .fill(Color("Color2"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                }
                
                HStack(spacing: 30) {
                    Button(action: {
                        selectedAvatar.color = "Color3"
                    }, label: {
                        Circle()
                            .fill(Color("Color3"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                    Button(action: {
                        selectedAvatar.color = "Color4"
                    }, label: {
                        Circle()
                            .fill(Color("Color4"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                }
                
                HStack(spacing: 30) {
                    Button(action: {
                        selectedAvatar.color = "Color5"
                    }, label: {
                        Circle()
                            .fill(Color("Color5"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                    Button(action: {
                        selectedAvatar.color = "Color6"
                    }, label: {
                        Circle()
                            .fill(Color("Color6"))
                            .frame(width: 100)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                    })
                }
                
                
            }
        }
    }
}

struct Listbackgroundimage_Previews: PreviewProvider {
    static var previews: some View {
        Listbackgroundimage()
    }
}
