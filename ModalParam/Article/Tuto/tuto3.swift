//
//  tuto3.swift
//  Harmonyapp
//
//  Created by Phounphonh on 09/02/2023.
//

import SwiftUI

struct tuto3: View {
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
                    Text("Parler à une personne de confiance")
                        .fontWeight(.heavy)
                    VStack{
                        ZStack {
                            Image(systemName: "heart")
                            Image(systemName: "heart.fill")
                                .opacity(isPressed ? 1 : 0).scaleEffect(isPressed ? 1.0 : 0.1).animation(.linear)
                            CirclesView11(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView11(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                    Image("article2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                        .padding(.bottom,40)
                    Text("""
      Personne ne mérite d’être harcelé. Le harcèlement peut toucher tous les âges, toutes religions, tous les sexes et toutes les classes sociales. Personne n’est à l’abri mais personne ne devrait avoir à subir ça. Le problème ce n’est pas toi, mais celui qui te harcèle.
    
      Numéro d’urgence
    En cas de cyberharcèlement, tu peux appeler le numéro Net écoute 0800 200 000, géré par l’association E-Enfance. Net écoute te donnera des conseils, mais peut aussi t’aider à retirer les contenus humiliants du web.
    
    Voici quelques conseils pour aider un enfant en situation de cyberharcèlement :
    
    L’écouter pour éviter qu’il culpabilise. Le rassurer pour qu’il comprenne que la situation va cesser et que les adultes sont là pour le protéger.
    
    Paramétrer ses comptes pour augmenter leur confidentialité et le protéger davantage. [Voir l’article > Prévenir le cyberharcèlement : comment paramétrer ses réseaux sociaux ?]
    
    Retirer le harceleur des contacts de l’enfant.
    Bloquer l’accès du harceleur aux publications de l’enfant. [Voir l’article > Prévenir le cyberharcèlement : comment paramétrer ses réseaux sociaux ?]
    
    Signaler le compte du harceleur en alertant le réseau social sur lequel a lieu le cyberharcèlement. [Prévenir le cyberharcèlement : comment paramétrer ses réseaux sociaux ?]
    
    Faire des captures d’écran des publications ou des messages de harcèlement. Conserver ces traces  en cas de poursuites judiciaires.
    
    Ne pas agir seul. Prendre rendez-vous avec la direction de l’école, du collège ou du lycée représentée par le chef d’établissement, le principal adjoint, le conseiller principal d’éducation ou le professeur principal.
    
    Se faire accompagner par un délégué de parent d’élèves, un médiateur ou un assistant social.
    
    Des services existent pour vous accompagner dans vos démarches : le 3020 (numéro vert) sur www.nonauharcelement.education.gouv.fr   ou le 3018 (numéro national) sur www.e-enfance.org/le-3018
    
    Vous trouverez d’autre
    """)
                    .padding()
                }
            }
        }
    }
}


struct tuto3_Previews: PreviewProvider {
    static var previews: some View {
        tuto3().environmentObject(UserSetting())
    }
}

struct CirclesView11 : View {
    
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
