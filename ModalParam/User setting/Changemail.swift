//
//  Changemail.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct Changemail: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedMail: UserSetting
    @State var newMail: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Button("") {
                    dismiss()
                }
                Text("Changement d'e-Mail")
                    .font((.system(size: 26)))
                    .bold()
                
                    .padding(.bottom, 70)
                VStack(alignment: .center) {
                    Text("e-Mail: ")
                        .font((.system(size: 16)))
                    Text("\(selectedMail.mail)")
                        .font((.system(size: 28)))
                        .foregroundColor(Color("\(selectedMail.color)"))
                        .bold()
                }
                .padding(.bottom,40)
                VStack {
                    TextField("Nouvel E-Mail...", text: $newMail)
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
                        selectedMail.mail = newMail
                    }, label: {
                        HStack{
                            Text("Valider")
                            Image(systemName: "checkmark.circle.fill")
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(selectedMail.isVerified ? Color("\(selectedMail.color)") : Color("Color2"))
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

struct Changemail_Previews: PreviewProvider {
    static var previews: some View {
        Changemail().environmentObject(UserSetting())
    }
}
