//
//  Temoignage1F.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Temoignage1F: View {
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
                    Text("Le témoignage poignant de Mavachou avant sa mort")
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
                            CirclesView6(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView6(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                Image("temoignage7")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
    La maman influenceuse Maëva Frossard, alias Mavachou, s’est suicidée le 22 décembre 2021, en raison de vagues de cyber-harcèlement. Elle s’était exprimée sur le sujet peu avant sa mort.
    
    Le 7 décembre 2021, Maeva, influenceuse connue sous le nom de Mavachou, accorde une interview à Sept à Huit dans le cadre d’un reportage sur les chaînes familiales, et le cyberharcèlement dont elle fait l’objet. Elle lit les vagues de commentaires haineux à son encontre, qui la traitent de mauvaise mère, et dénonce le caractère indélébile de ces attaques sur internet. Son nom y restera toujours attaché, explique-t-elle. "C’est dégueulasse, je n’ai pas d’autres mots". "J’en suis venue à vouloir cesser de vivre", révèle la jeune femme au cours de l’émission, précisant même avoir "fait des tentatives". "Finalement, on abandonne, lance-t-elle. Si je suis un monstre, alors je m’en vais". Elle déplorait le manque de réactivité et d’actualité de la justice à ce sujet : "On dépose des plaintes, on demande de l’aide et tout le monde s’en fout", déplorait-elle. Maëva se suicide 15 jours plus tard, chez elle, juste avant Noël. Sur les réseaux sociaux, des commentaires désobligeants continuent, suggérant qu’elle aurait dû arrêter les réseaux sociaux, si elle ne pouvait en supporter la critique. L’indécence de ces commentaires montre à quel point le cyberharcèlement est un mal tenace, qui se poursuit jusqu’après la mort.
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1F_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1F().environmentObject(UserSetting())
    }
}

struct CirclesView6 : View {
    
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
