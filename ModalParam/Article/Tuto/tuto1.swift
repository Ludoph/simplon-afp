//
//  tuto1.swift
//  Harmonyapp
//
//  Created by Phounphonh on 08/02/2023.
//

import SwiftUI

struct tuto1: View {
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
                    Text("Apprendre à bloquer et signaler sur les plateformes")
                        .fontWeight(.heavy)
                    VStack (spacing: 30) {
                        ZStack {
                            Image(systemName: "heart")
                            Image(systemName: "heart.fill")
                                .opacity(isPressed ? 1 : 0).scaleEffect(isPressed ? 1.0 : 0.1).animation(.linear)
                            CirclesView9(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView9(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                    Image("article5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                    Image("article7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                        .padding(.bottom,40)
                    Text("""
Sur ordinateur :
Accédez à votre profil, puis cliquez sur la molette à droite du bouton « Modifier profil » puis cliquez sur « Confidentialité et sécurité ».    Vous pouvez alors, entre autres :
rendre votre compte privé, c’est-à-dire vous permettre d’accepter ou non les demandes d’abonnés ;
désactiver le statut en ligne afin d’empêcher les comptes que vous suivez et les personnes à qui vous envoyez des messages de voir à quel moment vous vous êtes connecté ;
désactiver le partage de stories pour les personnes qui vous suivent. Si votre compte est public, tout le monde a accès à vos stories ;
régler l’option « photos de vous » sur manuel, afin d’empêcher une personne de vous identifier sur une photo.

Sur mobile :
Accédez à votre profil, puis appuyez sur le menu en haut à droite, puis sur « Paramètres » tout en bas, puis sur « Confidentialité ».
Vous pouvez alors, entre autres :
dans le menu « Connexions », régler votre confidentialité de compte sur privé, c’est-à-dire vous permettre d’accepter ou non les demandes d’abonnés ;
dans « Interactions », désactiver le statut en ligne afin d’empêcher les comptes que vous suivez et les personnes à qui vous envoyez des messages de voir à quel moment vous vous êtes connecté ;
dans le menu « Interactions » puis « Stories », régler l’option « Autoriser les messages » sur désactiver afin que personne ne puisse répondre à vos stories ;
dans ce menu, ne pas autoriser les partages de vos contenus dans les stories d’autres personnes, ne pas autoriser le partage automatique de vos stories dans votre story Facebook et ne pas autoriser vos abonnés à partager vos stories à d’autres personnes par message.

""")
                    .padding()
                }
            }
        }
    }
}

struct tuto1_Previews: PreviewProvider {
    static var previews: some View {
        tuto1().environmentObject(UserSetting())
    }
}

struct CirclesView9 : View {
    
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
