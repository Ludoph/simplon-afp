//
//  Verifiercompte.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct Verifiercompte: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedTel: UserSetting
    @State var numTel: String = ""
    @State var mailUser: String = ""
    @State var nameUser: String = ""
    var elementVerified: Bool {
        numTel == selectedTel.telNumber || mailUser == selectedTel.mail || nameUser == selectedTel.userName
    }
    
    var body: some View {
        ZStack {
            VStack {
                Button("") {
                    dismiss()
                }
                Text("Vérification du compte")
                    .font((.system(size: 26)))
                    .bold()
                    .padding(.bottom, 70)
                
                Group {
                    VStack(alignment: .center) {
                        Text("Nom d'utilisateur : ")
                            .font((.system(size: 16)))
                            .padding(.bottom,20)
                        TextField("Nom Utilisateur", text: $nameUser)
                            .padding()
                            .padding(.horizontal, 50)
                            .overlay (
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 300, height: 60)
                                    .opacity(0.3)
                            )
                            .padding(.bottom, 40)
                    }
                    VStack(alignment: .center) {
                        Text("Email d'utilisateur : ")
                            .font((.system(size: 16)))
                            .padding(.bottom,20)
                        TextField("Email d'utilisateur", text: $mailUser)
                            .padding()
                            .padding(.horizontal, 50)
                            .overlay (
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 300, height: 60)
                                    .opacity(0.3)
                            )
                            .padding(.bottom, 40)
                    }
                    VStack(alignment: .center) {
                        Text("N° de Téléphone : ")
                            .font((.system(size: 16)))
                            .padding(.bottom,20)
                        TextField("N° de Téléphone", text: $numTel)
                            .padding()
                            .padding(.horizontal, 50)
                            .overlay (
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 300, height: 60)
                                    .opacity(0.3)
                            )
                            .padding(.bottom, 40)
                    }
                }
                
                VStack {
                    Button(action: {
                        selectedTel.isVerified = elementVerified
                    }, label: {
                        HStack{
                            Text("Vérifier")
                            Image(systemName: "checkmark.circle.fill")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(selectedTel.isVerified ? Color("\(selectedTel.color)") : Color("Color2"))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.2), radius: 10, x:10, y:5)
                    })
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct Verifiercompte_Previews: PreviewProvider {
    static var previews: some View {
        Verifiercompte().environmentObject(UserSetting())
    }
}
