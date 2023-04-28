//
//  Temoignage2A.swift
//  Harmonyapp
//
//  Created by Phounphonh on 07/02/2023.
//

import SwiftUI

struct Temoignage2A: View {
    var temoignage: Temoignage
    
    var body: some View {
        VStack{
            Text("\(temoignage.name)")
                .fontWeight(.heavy)
                .padding()
            Image("imagetemoignage3")
                .resizable()
                .scaledToFit()
            ScrollView {
                Text("""
\(temoignage.contenu)
""")
                .padding()
            }
        }
        
        
    }
}

struct Temoignage2A_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage2A(temoignage: temoignages[0])
    }
}
