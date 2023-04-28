//
//  Temoignage1G.swift
//  Harmonyapp
//
//  Created by Phounphonh on 07/02/2023.
//

import SwiftUI

struct Temoignage1G: View {
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
                    Text("Ils ne se rendent pas compte du mal qu'ils font, une picarde victime de cyberharcèlement témoigne")
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
                            CirclesView7(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView7(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                Image("temoignage6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
          Le film "Arthur Rambo" va être diffusé en avant-première ce mardi soir à Amiens, au cinéma Orson Welles. L'histoire d'un écrivain à succès qui se voit rattrapé par ses activités de cyberharceleur. Il envoie des dizaines de messages d'insultes sur les réseaux sociaux. Un fléau qui touche des célébrités sur Internet, mais aussi Monsieur et Madame Tout le Monde, et parfois des plus jeunes. 20% des enfants disent avoir été confrontés à du cyberharcèlement dans leur vie selon une étude Audirep de 2021, un chiffre qui est peut-être sous-estimé face à la difficulté de témoigner pour des jeunes.
    
          "Il existe beaucoup de signaux faibles, décrypte Guillaume Harent, chargé de mission à la lutte contre le harcèlement au rectorat d'Amiens. Si l'enfant dort moins, s'il mange moins, si ses notes baissent... Il faut lui en parler, éventuellement demander à son école son comportement en classe, souvent, ils n'en parlent pas tout seuls."
    
    
          Le cyberharcèlement peut faire mal à des jeunes enfants, comme Jennifer. Au collège, dans l'Oise, elle est harcelée par des garçons sur son corps. Des blagues qui se transforment en insultes sur les réseaux sociaux, une fois à la maison. "Ils ne se rendent pas compte du mal qu'il peuvent faire", témoigne aujourd'hui la jeune femme de 24 ans. Elle a trouvé la force d'en parler à une professeure, et a préféré changer de région, car les insultes ne cessaient pas. "On essaie de vous réduire comme une moins que rien" témoigne-t-elle. Des années qui minent Jennifer et qui l'empêchent d'avoir une bonne dose de confiance en elle. Aujourd'hui, elle se félicite d'avoir su rebondir, trouver sa voie et ouvert un compte Instagram qui compte maintenant 5.000 abonnés."
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1G_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1G().environmentObject(UserSetting())
    }
}

struct CirclesView7 : View {
    
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
