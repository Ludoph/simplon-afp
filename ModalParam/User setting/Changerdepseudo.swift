//
//  Changerdepseudo.swift
//  Harmonyapp
//
//  Created by Phounphonh on 07/02/2023.
//

import SwiftUI

struct Changerdepseudo: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedUserName: UserSetting
    @State var newUserName: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Button("") {
                    dismiss()
                }
                Text("Changement de pseudo")
                    .font((.system(size: 26)))
                    .bold()
                
                    .padding(.bottom, 70)
                VStack(alignment: .center) {
                    Text("Pseudo: ")
                        .font((.system(size: 16)))
                    Text("\(selectedUserName.userName)")
                        .font((.system(size: 38)))
                        .foregroundColor(Color("\(selectedUserName.color)"))
                        .bold()
                }
                .padding(.bottom,40)
                VStack {
                    TextField("Nouveau pseudo...", text: $newUserName)
                        .padding()
                        .padding(.horizontal, 50)
                        .overlay (
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.black, lineWidth: 1)
                                .frame(width: 300, height: 60)
                                .opacity(0.3)
                        )
                        .padding(.bottom, 60)
                    Button(action: {
                        selectedUserName.userName = newUserName
                    }, label: {
                        HStack{
                            Text("Valider")
                            Image(systemName: "checkmark.circle.fill")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(selectedUserName.isVerified ? Color("\(selectedUserName.color)") : Color("Color2"))
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

struct Changerdepseudo_Previews: PreviewProvider {
    static var previews: some View {
        Changerdepseudo().environmentObject(UserSetting())
    }
}
