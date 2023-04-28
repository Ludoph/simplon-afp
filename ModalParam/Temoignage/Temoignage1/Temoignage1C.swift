//
//  Temoignage1C.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Temoignage1C: View {
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
                    Text("Sarah, 16 ans, victime de cyberharcèlement")
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
                            CirclesView3(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView3(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                Image("temoignage2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
        Hospitalisée après plusieurs tentatives de suicide, Sarah a raconté sur Europe 1, mardi, le calvaire qu'elle a vécu pendant toute sa scolarité en raison de cyberharcèlement et de harcèlement scolaire.
    
        Aujourd'hui, Sarah va "mieux". Mais cette adolescente a vécu un enfer quand d'autres élèves de son collège ont fait tourné des photos d'elle sur les réseaux sociaux, accompagnées de messages blessants et de menaces. Elle a tenté plusieurs fois de mettre fin à ses jours pour cesser ce calvaire, dont elle ne connait toujours pas l'origine. Elle raconte son histoire au micro Europe 1 d'Olivier Delacroix.
    
        "J'ai été victime de harcèlement scolaire pendant toute ma scolarité. J'étais nouvelle au collège depuis la 6ème. Je pensais que personne ne me connaissait, je pensais ouvrir une nouvelle page. Mais les personnes ne m'appréciaient pas. Ensuite, en 3ème, des photos de moi tournaient dans mon collège et circulaient sur Snapchat. Je n'avais aucune idée d'où ça venait. Je pense qu'ils voulaient me mettre vraiment très mal.
    
        >> De 15h à 16h, partagez vos expériences de vie avec Olivier Delacroix sur Europe 1. Retrouvez le replay de l'émission ici
        C'était un effet boule de neige. Si quelqu'un me critiquait, les copains de cette personne me critiquaient aussi. Quand j'ai menacé de porter plainte, je n'ai visé personne. J'ai juste dit : 'Si vous continuez, je peux porter plainte'. Je savais qui l'avait fait. Il y a une fille qui est venue me voir et qui m'a dit : 'Tu veux porter plainte contre moi, salope ? Va te suicider !' Je ne savais même pas que cette personne avait posté des photos de moi. Je l'ai très mal vécu, ce sont des paroles très choquantes.
    
        Agressée avant d'aller porter plainte
        [En août 2017, elle a téléchargé l'application Sarahah] Cette application consiste à poster des messages anonymement sur le mur de personnes, de dire aux personnes ce qu'on pense d'elles sans être reconnues. Généralement, on prend en capture d'écran ces messages et on les poste sur d'autres réseaux sociaux. Tout le monde la téléchargeait autour de moi. Je me suis dit : 'Pourquoi ne pas essayer ?'.
    
        [Très vite, elle reçoit des messages hostiles et des menaces de mort] Je n'ai jamais su qui en étaient les auteurs. J'ai mis du temps à en parler à mes parents, j'étudiais dans le sud de la France chez mes grands-parents et eux étaient à Paris. C'était difficile d'en parler par téléphone.
    
    
        Je me réfugiais dans le virtuel et j'échappais un peu au réel en étant sur mon téléphone
        J'ai fini par en parler à ma mère, mais je ne lui ai pas montré les messages parce que je ne voulais pas la faire souffrir. Je suis allée en octobre 2017 au commissariat. Il fallait montrer les messages, donc j'y suis allée seule car je voulais préserver mes parents. Sur le chemin, je me suis fait agresser par une jeune fille qui m'avait déjà agressée précédemment à l'école primaire. Sur Snapchat, elle avait menacé de me frapper. Deux semaines après, elle m'a vue à la gare et a demandé à me parler. Elle m'a frappée. La police et les pompiers ont dû intervenir. J'ai porté plainte mais un an après, mais aucun nom n'est ressorti de tous les messages jusqu'à présent.
    
        Le téléphone, "une drogue"
        Sur les réseaux sociaux, j'en ai parlé plusieurs fois du harcèlement, les gens étaient très gentils avec moi. Je me réfugiais dans le virtuel et j'échappais un peu au réel en étant sur mon téléphone. Le plus dur, ça a été de comprendre pourquoi on me harcelait. On finit par se dire qu'ils ont raison. Je me disais que si autant de personnes pensaient ça de moi, peut-être qu'il fallait que je les écoute. Ça m'a amené à faire plusieurs tentatives de suicide.
    
        Aujourd'hui, je vais mieux grâce à ma famille et grâce aux soins. Je suis toujours hospitalisée depuis un an et quelques jours. Sans téléphone, c'est dur. Je ne pouvais pas laisser mon portables 30 secondes sans que je reçoive un message. Dans mon cas, c'est une drogue. On y va pour voir ce qui se passe. Le stress, c'est de savoir s'il s'est dit quelque chose sur moi."
    
        L'avis de Nathalie Dupin, sociologue spécialiste des réseaux sociaux
        Le cas de Sarah est typique. Il y a un effet de meute, qu'il s'agisse de harcèlement scolaire ou du cyberharcèlement. D'ailleurs, il est souvent difficile de les différencier, car ils ont lieu de la même manière. Souvent, il y a un ou deux leaders et puis beaucoup d'autres vont suivre pour faire comme les autres. Certains trouvent ça exagéré mais ont peur de dire les choses, de peur que ça se retourne sur eux. Il y a une forme de loi du silence qui peut s'instaurer.
        Ce qui est aussi typique, c'est que les enfants ne veulent pas inquiéter leurs parents. Les parents doivent donc être assez vigilants. Si ce sont des états qui durent pendant des jours, on voit un changement d'attitude, c'est-à-dire que l'enfant qui invitait des amis à la maison et qui parlait beaucoup se renferme. Il ne faut pas forcément mettre ça sur la crise d'adolescence. Ce n'est peut-être pas très grave, mais il faut dire à son enfant qu'on est là s'il ne va pas bien.
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1C_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1C().environmentObject(UserSetting())
    }
}

struct CirclesView3 : View {
    
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
