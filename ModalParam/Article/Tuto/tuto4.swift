//
//  tuto4.swift
//  Harmonyapp
//
//  Created by Phounphonh on 09/02/2023.
//

import SwiftUI

struct tuto4: View {
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
                    Text("Qu'est ce que le cyber harcèlement?")
                        .fontWeight(.heavy)
                    VStack{
                        ZStack {
                            Image(systemName: "heart")
                            Image(systemName: "heart.fill")
                                .opacity(isPressed ? 1 : 0).scaleEffect(isPressed ? 1.0 : 0.1).animation(.linear)
                            CirclesView12(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView12(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                    Image("article4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Text("""
         Qu’est-ce-que le cyberharcèlement ?
         
         La définition du cyberharcèlement
         "Le cyberharcèlement est un acte agressif, intentionnel perpétré par un individu ou un groupe d’individus au moyen de formes de communication électroniques, de façon répétée à l’encontre d’une victime qui ne peut facilement se défendre seule", selon Peter K. Smit, auteur de Cyberharcèlement : l’impact sur les élèves au collège et au lycée.
    
         Le cyberharcèlement se pratique via les téléphones portables, messageries instantanées, forums, chats, jeux en ligne, courriers électroniques, réseaux sociaux, site de partage de photographies etc.
    
         Face au cyberharcèlement la victime a bien du mal à se défendre
         Les types de cyberharcèlement
         Vidéo du jour :
    
         Il existe différents types de cyberharcèlement :
    
         - Les intimidations ou menaces en ligne
    
         - Les insultes et moqueries
    
         - La propagation de rumeurs
    
         - Le piratage de comptes et l’usurpation d’identité digitale
    
         - La création d’un sujet de discussion, d’un groupe ou d’une page sur un réseau social à l’encontre d’une personne
    
         - La publication d’une photo ou d’une vidéo de la victime en mauvaise posture ou à caractère sexuel
    
         Les conséquences du cyberharcèlement
    
         Aucun répit avec le cyberharcèlement
         Le problème majeur avec le cyberharcèlement c’est qu’il ne s’arrête jamais. En effet, quand le harceleur a choisi sa victime il ne la lâche plus.
    
         Tous les jours il commente ses post, lui envoie des flots d'insultes en message privé. Pire, il incite d’autres personnes à faire comme lui.
    
         La diffusion massive et instantanée des messages peut toucher un très large public. Il est alors très difficile d’en reprendre le contrôle.
    
    
         closevolume_off
         Résultat, la victime est abreuvée constamment de contenus qui la rabaissent et qui lui font perdre confiance en elle.
    
         Un impact sur la santé mentale de la victime
         La cyberviolence a un réel impact sur la santé mentale des victimes. Selon le site du gouvernement Non au harcèlement :
    
         "Ces conséquences seraient plus importantes que celles du harcèlement traditionnel en raison des caractéristiques particulières de ce type de violence (anonymat, pouvoir de dissémination et public élargi etc.)."
    
         Anxiété, crainte, faible estime de soi, baisse de motivation, troubles du sommeil, fatigue, repli sur soi, troubles alimentaires, deviennent le lot quotidien des victimes.
    
         Certaines tombent dans des dépressions très sévères et dans le pire des cas finissent par se suicider.
    
         Quelles solutions face au cyberharcèlement ?
    
         Ne pas rester seule et chercher de l’aide
    
         Pour pouvoir lutter contre le cyberharcèlement, il faut d’abord se rendre compte qu’on est une victime. Puis, trouver la force d’en parler et de se confier à ses proches.
    
         "Il est important de chercher du soutien et d’en parler à une personne de confiance, le harcèlement est un délit, RIEN ne le justifie », explique sur son site le Collectif féministe contre le cyberharcèlement.
    
         "Personne n’a le droit de vous harceler : ce n’est pas vous qui êtes à blâmer, c’est celui ou ceux qui harcèlent."
    
         Si on se sent prête à passer à l’action, on peut commencer par signaler les harceleurs sur les plateformes des réseaux sociaux.
    
         Les recours juridiques contre le cyberharcèlement
         Bien que le cyberharcèlement ne soit pas une infraction réprimée en tant que telle par la loi française, l’auteur d’actes accomplis à cette fin est susceptible de voir sa responsabilité engagée sur le fondement du droit civil, du droit de la presse ou du Code pénal.
    
         Par exemple :
    
    
         - Une injure ou une diffamation publique peut être punie d’une amende de 12.000€
    
         - Pour le droit à l’image, la peine maximum encourue est d’un an de prison et de 45.000 € d’amende
    
         - L’usurpation d’identité peut être punie d’un an d’emprisonnement et de 15.000€ d’amende
    
         Pour sortir de cet engrenage, il existe un numéro vert national, Net Ecoute (0800 200 000). Il propose des moyens techniques juridiques et psychologiques adaptés aux victimes de cyberharcèlement.
    
         Garder des preuves
         Pour monter un dossier contre le ou les harceleurs, il est primordial de conserver des preuves. Par exemple en faisant des captures d’écran avec son ordinateur ou son smartphone.
    
         Cependant, elles  peuvent faire l’objet d’un montage et donc être contestées. Il est donc conseillé d’utiliser également un outil comme https://tweetsave.com/
    
         Il permet d’archiver un tweet via son URL et le compte associé, même s’il est ensuite supprimé par l’auteur.
    
         Il existe également des plateformes qui permettent de conserver des traces des échanges sur les autres réseaux sociaux : https://digi.me/features
    
         Plus les victimes porteront plaintes, plus les harceleurs se rendront compte des conséquences de leurs actes. Plus des jugements seront rendus, plus les gens feront attention à leurs propos sur internet.
    
         >>  Si vous êtes victime de cyberharcèlement, surtout parlez-en autour de vous.
    """)
                    .padding()
                }
            }
        }
    }
}


struct tuto4_Previews: PreviewProvider {
    static var previews: some View {
        tuto4().environmentObject(UserSetting())
    }
}

struct CirclesView12 : View {
    
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
