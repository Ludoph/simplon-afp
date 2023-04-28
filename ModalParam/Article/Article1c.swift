//
//  Articlehomo3.swift
//  Harmonyapp
//
//  Created by Phounphonh on 03/02/2023.
//

import SwiftUI

struct Article1c: View {
    @EnvironmentObject var selectedAvatar: UserSetting
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            VStack {
                Text("Dur dur")
                    .fontWeight(.heavy)
                    .padding()
                Image("imagearticlehomo3")
                    .resizable()
                    .frame(width: 300, height: 150)
                ScrollView {
                    Text("""
    Âgés de 20 à 26 ans, les jeunes prévenus interpellés un peu partout en France, sont renvoyés devant le tribunal pour le cyberharcèlement haineux et homophobe du chanteur - présent au premier rang, à l'audience - à la suite d'un concert qu'il avait donné à l'église Saint-Eustache, à Paris.
    
    À lire aussi >> Cyberviolence : un kit de survie pour aider les victimes
    
    Invité à se produire dans le festival « Qui va piano va sano », Eddy de Pretto avait interprété son morceau « A quoi bon » évoquant les difficultés à concilier son homosexualité et la religion.  « Je crois que je n’suis pas prêt pour obéir à ta Bible (...) Je sais ce qui te plaît, je crois que je n’ai pas lu les bons livres/Mais tu me diras, nan, c’est trop, tu n’es pas assez sain/Pour venir dans tes rangs, il faut n’avoir fait presque rien », avait alors chanté Eddy de Pretto.
    
    Evoquer ces thèmes-là au sein même d'une église ?  « Je l'assume pleinement (...) Je ne vois pas quel est le problème que je sois un sodomite qui chante dans une église », a lancé le chanteur, appelé à la barre. « Mon désir était de poser des questions en tant qu'artiste sur des thématiques cruciales et majeures, je pensais pas que ça pouvait avoir des retours aussi néfastes. »
    
    À lire aussi >> Cyberharcèlement : une nouvelle application pour aider les victimes
    
    3.000 MESSAGES D’INSULTES
    A l'issue de sa performance, postée sur Instagram, il reçoit en effet près de 3.000 messages d'insultes et de menaces de mort sur les réseaux sociaux, comme l'a confirmé à l'audience son avocat Nicolas Verly.
    
    « Espèce de gigantesque fiotte », « on va te retrouver pour ton manque de respect, fils de pute », « crève en enfer sale chien », « je vais te violer avec un balai dans une mosquée », avaient par exemple écrit des internautes, selon des captures d'écran postées sur le compte Instagram du chanteur.
    
    Des messages de haine qui l'ont incité à s'attacher les services d'un garde du corps et à déposer une plainte, déclenchant une enquête ouverte par le Pôle national de lutte contre la haine en ligne (PLNH) du parquet de Paris.
    
    « J'ai eu très peur de sortir de chez moi, des troubles du sommeil, (...) des troubles dépressifs, j'arrivais pas à comprendre cette violence », a encore indiqué le chanteur, notant que le curé de Saint-Eustache lui avait « exprimé tout son soutien ».
    
    Les prévenus - douze présents, cinq absents - seront jugés des chefs de harcèlement en ligne, avec incapacité totale de travail (ITT) de plus de huit jours, et harcèlement en ligne avec ITT de plus de huit jours, commis en raison de l’orientation sexuelle de la victime. Le procès doit durer jusqu’à vendredi.
    """)
                    .padding()
                }
            }
        }
    }
}

struct Article1c_Previews: PreviewProvider {
    static var previews: some View {
        Article1c()
    }
}
