//
//  Discussion.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Discussion: View {
    @State var titreDiscussion: String = ""
    @State var textDiscussion: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("Objet: ")
                    .bold()
                TextField("Ecrivez votre objet", text: $titreDiscussion)
            }
            Group {
                Text("Message: ")
                    .bold()
                TextField("Ecrivez votre message", text: $titreDiscussion)
            }
            Spacer()
            Button(action: {}, label: {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Envoyer")
                    Image(systemName: "paperplane.circle.fill")
                    Spacer()
                }
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(12)
                .shadow(radius: 10)
            })
            
        }
        .padding()
    }
}

struct Discussion_Previews: PreviewProvider {
    static var previews: some View {
        Discussion()
    }
}
