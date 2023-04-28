//
//  tuto2.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct tuto2: View {
    @EnvironmentObject var selectedAvatar: UserSetting
    @State var isPressed = false
    @State var scale : CGFloat = 1
    @State var opacity  = 0.0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,Color(selectedAvatar.color)]), startPoint: .top, endPoint: .bottom).opacity(0.5)
                .ignoresSafeArea()
            VStack(spacing:30) {
                HStack {
                    Text("Conserver les preuves")
                        .fontWeight(.heavy)
                    VStack (spacing: 30) {
                        ZStack {
                            Image(systemName: "heart")
                            Image(systemName: "heart.fill")
                                .opacity(isPressed ? 1 : 0).scaleEffect(isPressed ? 1.0 : 0.1).animation(.linear)
                            CirclesView10(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView10(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                }
                .padding()
                
                
                ScrollView {
                    Image("article10")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                    Image("article3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                        .padding(.bottom,40)
                    Text("""
    Conservez les preuves. Faites des captures d’écran, conservez les messages et les informations liées aux auteurs du cyberharcèlement, qui pourront vous servir pour signaler et caractériser cette situation, voire pour déposer plainte.
    
    Quelles informations documenter?
    Lorsque vous avez besoin de conserver des preuves du harcèlement qui vous vise ou cible une autre personne, assurez-vous d’inclure les éléments suivants:
    
    Date et heure
    Type de communication (message direct, image publiée, commentaire sur les réseaux sociaux, etc.)
    Plateforme, nom du site web ou de l’application
    Identifiant, nom d’utilisateur
    Nature de l’incident en ligne (menace de violence sexuelle, attaque à caractère raciste, etc.)
    Liens (vous pouvez utiliser Archive.is pour conserver une adresse URL)
    Capture d’écran (n’oubliez pas de faire la capture d’écran avant de signaler le contenu comme abusif, au cas où il serait retiré)
    Vous pouvez ajouter d’autres remarques, telle que la tactique utilisée (voir le Glossaire de PEN America sur le cyberharcèlement), la fréquence des attaques, ou des éléments de contexte (le cyberharcèlement fait-il suite à une publication, a-t-il été amplifié par un message critique posté par un compte influent, etc.)
    """)
                    .padding()
                }
            }
        }
    }
}

struct tuto2_Previews: PreviewProvider {
    static var previews: some View {
        tuto2()
    }
}

struct CirclesView10 : View {
    
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
