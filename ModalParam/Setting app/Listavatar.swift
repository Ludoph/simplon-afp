//
//  Listavatar.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Listavatar: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedAvatar: UserSetting
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 70) {
                    Button("") {
                        dismiss()
                    }
                    HStack(spacing : 30) {
                        Button(action: {
                            selectedAvatar.avatar = "photoprofil1"}, label: {
                                Image("photoprofil1")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            })
                        Button(action: {selectedAvatar.avatar = "photoprofil2"}, label: {
                            Image("photoprofil2")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "photoprofil3"}, label: {
                            Image("photoprofil3")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                    HStack(spacing : 30) {
                        Button(action: {selectedAvatar.avatar = "photoprofil4"}, label: {
                            Image("photoprofil4")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "photoprofil5"}, label: {
                            Image("photoprofil5")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "photoprofil6"}, label: {
                            Image("photoprofil6")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                    HStack(spacing : 30) {
                        Button(action: {selectedAvatar.avatar = "avatar11"}, label: {
                            Image("avatar11")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar12"}, label: {
                            Image("avatar12")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar13"}, label: {
                            Image("avatar13")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                    HStack(spacing : 30) {
                        Button(action: {selectedAvatar.avatar = "avatar21"}, label: {
                            Image("avatar21")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar22"}, label: {
                            Image("avatar22")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar23"}, label: {
                            Image("avatar23")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                    HStack(spacing : 30) {
                        Button(action: {selectedAvatar.avatar = "avatar31"}, label: {
                            Image("avatar31")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar32"}, label: {
                            Image("avatar32")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar33"}, label: {
                            Image("avatar33")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                    HStack(spacing : 30) {
                        Button(action: {selectedAvatar.avatar = "avatar41"}, label: {
                            Image("avatar41")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar42"}, label: {
                            Image("avatar42")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                        Button(action: {selectedAvatar.avatar = "avatar43"}, label: {
                            Image("avatar43")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        })
                    }
                }
            }
        }
        
        
    }
}

struct Listavatar_Previews: PreviewProvider {
    static var previews: some View {
        Listavatar().environmentObject(UserSetting())
    }
}
