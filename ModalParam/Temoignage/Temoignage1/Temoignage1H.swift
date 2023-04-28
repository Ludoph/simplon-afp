//
//  Temoignage1H.swift
//  Harmonyapp
//
//  Created by Phounphonh on 07/02/2023.
//

import SwiftUI

struct Temoignage1H: View {
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
                    Text("Trop moche pour prendre des selfies, Melissa Blake une journaliste américaine atteinte de handicap")
                        .fontWeight(.heavy)
                        .padding()
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
                            CirclesView8(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView8(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                .padding(.horizontal)
                .padding(.bottom, 20)
                Image("temoignage9")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
              Melissa Blake est connue Outre-Atlantique comme journaliste collaborant avec les magazines Cosmopolitan ou encore le New York Times.Sur internet, l'Américaine possède une petite notoriété notamment grâce à son blog So about what I said où elle distille ses conseils relationnels et écrit des billets encourageant à vivre au mieux avec le syndrome de Freeman Sheldon dont elle est elle-même atteinte depuis sa naissance.
    
              Sur Twitter, ce sont quelques 25.000 abonnés qui la suivent, friands de ses divers tweets quotidiens commentant notamment la vie politique. Forte de ses opinions, Melissa Blake n’hésite pas à donner son avis sur le gouvernement Trump. Certains internautes dont un youtubeur plutôt connu aux États-Unis n’auraient pas apprécié ses interventions et s’en seraient pris violemment au physique de la rédactrice, la jugeant trop laide pour faire des selfies et donner son avis sur internet.
    
    
              La twittosphère n’a pas tardé à réagir contre ces propos haineux en défendant la blogueuse, jusqu’à ce que Melissa Blake elle même décide de riposter en postant trois selfies pied-de-nez à ses détracteurs. En légende on peut y lire : “Durant le dernier round des trolls, des gens ont dit que mes selfies devraient être bannis d’internet parce que je suis trop moche. Je voulais juste leur rendre hommage avec ces trois selfies…”
    
    
              Cet épisode de body shaming est encore une fois la preuve que le cyber harcèlement est un véritable fléau sévissant sur les réseaux sociaux. Malgré plusieurs actions et appels à l'acceptation de soi et d'autrui, il semblerait que le chemin à faire pour un internet sain et paisible, soit encore long.
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1H_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1H().environmentObject(UserSetting())
    }
}

struct CirclesView8 : View {
    
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
