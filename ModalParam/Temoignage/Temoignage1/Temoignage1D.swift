//
//  Temoignage1D.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI


struct Temoignage1D: View {
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
                    Text("De l'histoire ancienne ?")
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
                            CirclesView4(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView4(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                Image("temoignage4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
    Elle pensait que c'était terminé, de l'histoire ancienne, que sa fille de 13 ans, allait pouvoir reprendre une vie normale, sans messages de haine à répétition sur les réseaux sociaux. Pourtant, quelques heures à peine après avoir témoigné auprès de La Dépêche, les menaces ont repris : "Ma fille vient de m'appeler pour me demander d'être à l'arrêt de bus à la sortie des cours car des filles du collège veulent la frapper..."
    
    
    Aurel, cette mère de quatre enfants qui habite dans les environs de Montauban (Tarn-et-Garonne), ne cache pas son désarroi. Après une brève accalmie, le cauchemar reprend. Comme il y a deux ans, quand sa fille a commencé à recevoir des messages haineux sur le réseau social Instagram. "On lui disait de se jeter sous un train, qu'elle ne méritait pas de vivre", se remémore Aurel.
    
    Mais au départ, tout se déroule sans qu'Aurel ne le sache. Puis elle remarque que le comportement de son ado change : "Elle se renfermait de plus en plus, elle était tout le temps en colère, elle ne voulait plus aller au collège..." Sa fille finit par se confier. Aurel prend alors les choses en main : elle répond et bloque tous les messages de harcèlement, restreint les personnes qui peuvent contacter sa fille, et surtout, elle signale les faits auprès du collège où sont également scolarisées les personnes à l'origine du harcèlement. L'équipe de direction de l'établissement souhaite que l'adolescente donne des noms, mais cette dernière prend peur et refuse. "J'ai essayé de la convaincre en lui disant que c'était comme ça que les choses pourraient s'arrêter et surtout que cela empêcherait ces personnes de malmener d'autres enfants." Finalement, "après de longs mois où le harcèlement continuait", une confrontation a eu lieu entre la fille d'Aurel et ses harceleuses. Ces dernières ont été exclues trois jours de l'établissement.
    
    
    "J'étais seule face à une montagne"
    
    À Toulouse, Lucie* a elle aussi découvert avec stupeur la violence du cyberharcèlement dont sa fille était victime. "J'étais seule face à une montagne, dès que je signalais ou bloquais des comptes, quatre ou cinq autres étaient créés, c'était un jeu pour eux..." Des menaces virtuelles qui sont devenues physiques quand l’adresse du domicile familial a été rendue publique et que des individus sont venus frapper à la porte…
    
    Convaincue de la nécessité d'attaquer le problème directement à la racine, elle a passé des heures et des heures à signaler et bloquer de comptes, et une fois que sa fille a pu se défaire de ce harcèlement et s'en remettre peu à peu, Lucie a décidé de continuer ce combat, pour les autres.
    
    "Quand je signalais les messages qui ciblaient ma fille, je me rendais bien compte qu'il y en avait énormément à l'attention d'autres jeunes, et je pensais à tous ces parents qui n'ont sans doute pas connaissance de ça..." Alors Lucie a contribué à l'émergence de l'association d'ampleur nationale "Stop Fisha" qui œuvre pour le signalement de ces comptes à l'origine de cyberharcèlement. Et elle voit déjà les effets de cette lutte "très importante pour éviter que cela ne blesse d'autres personnes."
    
    Que faire si votre enfant est victime de cyberharcèlement ?
    
    Si vous observez un comportement différent chez votre enfant, notamment des réactions inhabituelles lorsqu'il ou elle consulte son téléphone, il est peut-être la cible de cyberharcèlement. Dans ce cas, il vous faut signaler les contenus qui lui portent atteinte sur les plateformes en question, vous pouvez aussi prendre rendez-vous avec l'établissement pour faire connaître la situation, mais surtout, tentez d'encourager votre enfant à en parler.
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1D_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1D().environmentObject(UserSetting())
    }
}

struct CirclesView4 : View {
    
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
