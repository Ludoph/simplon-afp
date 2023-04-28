//
//  Changenumber.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct Changenumber: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var selectedTel: UserSetting
    @State var newTel: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Button("") {
                    dismiss()
                }
                Text("Changement n° de téléphone")
                    .font((.system(size: 26)))
                    .bold()
                
                    .padding(.bottom, 70)
                VStack(alignment: .center) {
                    Text("N° de Téléphone : ")
                        .font((.system(size: 16)))
                    Text("\(selectedTel.telNumber)")
                        .font((.system(size: 38)))
                        .foregroundColor(Color("\(selectedTel.color)"))
                        .bold()
                }
                .padding(.bottom,40)
                VStack {
                    TextField("Nouveau N° de Téléphone", text: $newTel)
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
                        selectedTel.mail = newTel
                    }, label: {
                        HStack{
                            Text("Valider")
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

struct Changenumber_Previews: PreviewProvider {
    static var previews: some View {
        Changenumber().environmentObject(UserSetting())
    }
}
