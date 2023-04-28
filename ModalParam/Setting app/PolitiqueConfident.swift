//
//  PolitiqueConfident.swift
//  Harmonyapp
//
//  Created by Phounphonh on 02/02/2023.
//

import SwiftUI

struct PolitiqueConfidentList: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            
            Text("Politique de confidentialité de Harmony")
                .font(.title2)
                .padding()
                .bold()
            Button("") {
                dismiss()
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Introduction")
                        .font(.title3)
                        .bold()
                    Text("""
        
        Cette politique de confidentialité s'applique à l'application de lutte contre le harcèlement en ligne, qui a pour objectif de fournir un espace sécurisé pour les utilisateurs afin de signaler et de gérer les incidents de harcèlement en ligne. Nous sommes très conscients de la confidentialité et de la protection des données personnelles de nos utilisateurs, et cette politique a été conçue pour décrire de manière claire et concise la façon dont nous collectons, utilisons, divulguons et protégeons les informations que nous recueillons auprès de nos utilisateurs.
        """)
                    Spacer()
                    Text("Collecte des données")
                        .font(.title3)
                        .bold()
                        .padding(.top)
                    
                    Text("""
        
        Nous collectons les informations suivantes auprès de nos utilisateurs : nom, adresse e-mail, informations de profil et informations sur les incidents de harcèlement en ligne signalés. Les informations sur les incidents de harcèlement sont nécessaires pour gérer les incidents et fournir une assistance aux utilisateurs affectés.
        """)
                    
                    Text("Utilisation des données")
                        .font(.title3)
                        .bold()
                        .padding(.top)
                    
                    Text("""
             
        Nous utilisons les informations collectées auprès de nos utilisateurs uniquement pour les fins suivantes :
        • Fournir des mises à jour sur les incidents de harcèlement signalés
        • Assurer la sécurité et la confidentialité de l'application et des données des utilisateurs
        • Améliorer les fonctionnalités de l'application et les rendre plus utiles pour les utilisateurs 
        """)
                }
                .padding()
            }
        }
    }
}

struct PolitiqueConfidentList_Previews: PreviewProvider {
    static var previews: some View {
        PolitiqueConfidentList()
    }
}
