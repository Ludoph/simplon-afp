//
//  Tamoignage1E.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Temoignage1E: View {
    @EnvironmentObject var selectedAvatar: UserSetting
    @State var chat = false
    @State var isPressed = false
    @State var scale : CGFloat = 1
    @State var opacity  = 0.0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("TÉMOIGNAGE DE CYBER-HARCÈLEMENT")
                        .fontWeight(.heavy)
                        .padding()
                    Spacer()
                    VStack (spacing: 20) {
                        Button (action: {chat.toggle()}, label: {
                            Image(systemName: "message")
                                .font(.system(size: 25))
                        })
                        .sheet(isPresented: $chat) {
                            Discussion()
                        }
                        ZStack {
                            Image(systemName: "heart")
                            Image(systemName: "heart.fill")
                                .opacity(isPressed ? 1 : 0).scaleEffect(isPressed ? 1.0 : 0.1).animation(.linear)
                            CirclesView5(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView5(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
                                .opacity(self.opacity)
                                .rotationEffect(Angle(degrees: 20))
                        }.font(.system(size: 25))
                            .onTapGesture {
                                self.isPressed.toggle()
                                withAnimation (.linear(duration: 0.2)) {
                                    self.scale = self.scale == 1 ? 1.3 : 1
                                    self.opacity = self.opacity == 0 ? 1 : 0
                                }
                                withAnimation {
                                    self.opacity = self.opacity == 0 ? 1 : 0
                                }
                            }
                            .foregroundColor(isPressed ? .red : .black)
                    }
                    .padding(.top,20)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                Image("temoignage5")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
        Témoignage d'une jeune fille qui avait 14 ans au moment des faits :
    
        Un jour je me suis réveillée, directement je me dirige vers mon téléphone, une routine que je pratiquais depuis bientôt 3 ans mais ce jour-là n'était pas pareil. J'arrive sur Twitter, je passe sur mon fil d'actualités et là c'est réellement le drame, des insultes, des messages, j'ai même reçu des appels sur mon numéro de portable, j'ai reçu une photo de moi, en pyjama (que j'avais envoyé quelque jours auparavant à une “amie”), c'est à ce moment-là que j'ai eu peur, je me suis dis que c'était un cauchemar, j'étais là et je ne pouvais rien faire, j'étais spectatrice de mon propre sort. Je me suis posée et j'ai réfléchi, comment agir ? Quelles sont mes armes ? Je me suis dis que je pouvais contacter Twitter, c'est ce que j'ai fait ; j'ai été réellement choquée de l'absentéisme que j'ai pu voir, aucune réponse…
    
           Je me suis dis que ça allait passer, que dans 2 jours on allait m'oublier.
    
           Le calvaire a continué pendant 2 mois, j'ai dû désactiver mes comptes, changer de numéro, et malgré cela on me retrouvait, les insultes fusaient “t'es une pute” “tu suces pour combien” “t'as besoin de te faire enculer pour te remettre les idées dans l'ordre” . C'était les seuls mots qui hantaient mon esprit. Je me suis dis que j'étais en train de me détruire, je tombais dans une dépression, j'osais en parler à personne, j'avais peur de sortir de chez moi. Un jour mon amie m'a dit d'aller à la police, j'étais sceptique, et encore là, j'ai été face à des murmures misogyne, l'enquête n'a rien donné. J'ai pris un long moment pour me reconstruire, refaire confiance, avoir confiance en moi même, juste vivre. Le pire dans cette histoire, ce sont les personnes qui harcèlent, elles éprouvent un réel plaisir à faire du mal. Et ne pas oublier les personnes qui ne réagissent pas face à la détresse.
    
           Mais des photos d'hommes torse nu on en voit tous les jours, personne dit rien, c'est normal oui, alors pourquoi pas les femmes ?
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1E_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1E().environmentObject(UserSetting())
    }
}

struct CirclesView5 : View {
    
    @State var isPressed = false
    //Variables liées cercles
    let angle : CGFloat = 40
    let radius : CGFloat
    let speed : Double
    let scale : CGFloat
    
    var body: some View {
        //View Elements
        ZStack{
            ForEach (0..<9) { num in
                Circle()
                    .fill(Color.red)
                    .frame(width: 10)
                    .scaleEffect(self.isPressed ? 0.1 : self.scale)
                    .animation(.linear(duration: self.speed))
                    .offset(x:  self.radius * cos(CGFloat(num) * self.angle * .pi / 180),
                            y: self.radius * sin(CGFloat(num) * self.angle * .pi / 180))
            }
        }
    }
}
