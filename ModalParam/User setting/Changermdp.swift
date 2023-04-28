//
//  Changermdp.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct Changermdp: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedMdp: UserSetting
    @State var newMdp: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Button("") {
                    dismiss()
                }
                Text("Changement de mot de passe")
                    .font((.system(size: 26)))
                    .bold()
                
                    .padding(.bottom, 70)
                VStack(alignment: .center) {
                    Text("Mot de passe: ")
                        .font((.system(size: 16)))
                    
                }
                .padding(.bottom,40)
                VStack {
                    TextField("Nouveau mot de passe...", text: $newMdp)
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
                        selectedMdp.mdp = newMdp
                    }, label: {
                        HStack{
                            Text("Valider")
                            Image(systemName: "checkmark.circle.fill")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(selectedMdp.isVerified ? Color("\(selectedMdp.color)") : Color("Color2"))
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

struct Changermdp_Previews: PreviewProvider {
    static var previews: some View {
        Changermdp().environmentObject(UserSetting())
    }
}
