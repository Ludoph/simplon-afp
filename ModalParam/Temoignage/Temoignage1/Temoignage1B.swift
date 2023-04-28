//
//  Temoignage1B.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import SwiftUI

struct Temoignage1B: View {
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
                    Text("Mon cyberharcèlement")
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
                            CirclesView2(isPressed: isPressed, radius: 35, speed: 0.1, scale: 0.7)
                                .opacity(self.opacity)
                            CirclesView2(isPressed: isPressed, radius: 55, speed: 0.2, scale: 0.5)
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
                Image("temoignage1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 250)
                ScrollView {
                    Text("""
            J’ai été victime de cyberharcèlement à l’âge de 12 ans sur une période de 8 mois.
    
            J’ai une histoire particulière, je n’ai jamais été victime de harcèlement scolaire. Mon cyberharcèlement n’a donc pas surgi après un harcèlement scolaire, il n’a pas non plus donné lieu à un harcèlement scolaire.
    
            J’étais une adolescente de 12 ans avec énormément de complexes. J’ai longtemps était complexé par mon corps ! A l’entrée dans l’adolescence, j’ai pris énormément de poids environ 15 kilos ce qui a permis à des vergetures et autres d’apparaître…
    
           J’ai toujours été très timide mais ces complexes ont empiré les choses, alors pour avoir une vie sociale normale, j’ai commencé à être énormément présente sur les réseaux sociaux et plus particulièrement sur des jeux vidéo en ligne.
    
           Je pouvais grâce à ces jeux en ligne me faire des amis sans qu’ils puissent me juger sur mon physique. J’ai rencontré énormément de personnes exceptionnelles jusqu’au jour où j’ai rencontré un garçon avec qui au début on ne s’appréciait pas. J’irai jusqu’à dire qu’on se détestait, mais j’ai appris à le connaître et je suis tombée amoureuse de lui. On l’appellera L. mais problème, il habitait près de Montpellier et moi à Paris. On a énormément discuté et on a décidé de se mettre en couple après une longue réflexion.
    
           5 jours après mon cyberharcèlement commençait ! Une des personnes qui était proche de L. à l’époque a commencé à parler de moi au sein de l’établissement. Malheureusement, les gens ne se sont pas réjouis de mon bonheur. Un groupe de filles m’a cherchée sur internet et m’a retrouvée facilement. Durant les deux premiers mois, ce n’était que ce groupe de filles qui s’acharnait sur moi !
    
           Au début, c’était des insultes comme « chaudière », « pétasse », « salope », « pute », des insultes qui aujourd’hui me paraissent si douces ! C’était tout au long de la journée sans aucune pause sur chaque réseau social. Au début, j’ai essayé de répondre :  je leur demandais pourquoi moi ? qu’est-ce que j’avais fait ? mais les seules réponses que j’avais étaient des insultes.
    
           Je lisais chacun des messages qui m’était adressé. Je l’ai fait jusqu’à la fin les deux premiers mois. Je répondais à chacun d’entre eux, je signalais chacun des faux comptes qui était créé pour m’insulter, mais au bout de deux mois, j’ai abandonné car ça ne faisait qu’empirer les choses ! 1 compte supprimé, 2 recréés ! Par la suite au bout de deux mois, les garçons sont arrivés et là tout à empiré !
    
           Ce n’était plus de simples insultes, c’était des photomontages qu’ils menaçaient de publier, des « j’ai pas eu mon argent de poche tu me feras une réduction sur la pipe » « je vais exploser ton p’tit cul » et j’en passe des milliers c’était constant nuit et jour, jour et nuit, sans interruption ! A la fin ils étaient une cinquantaine à me harceler tous les jours. Des centaines de faux comptes avait été créés, mais je n’ai rien dit à personne !
    
           Cela a duré 8 mois jusqu’au jour ou L. s’est suicidé ! Ce jour là, je n’ai plus jamais rien reçu ! Tous les faux comptes ont disparu, tout à disparu ainsi que ma joie de vivre et tout le reste mais j’ai continué à garder le silence durant 1 an.
    
           Jusqu’au jour ou j’ai failli commettre l’irréparable et où j’ai décidé d’en parler ! J’ai été diagnostiqué dépressive, je souffre encore aujourd’hui 2 ans après d’anxiété sociale. J’ai énormément de difficultés a crée des relations avec les jeunes de mon âge. J’ai une timidité maladive.
    
           J’ai des séquelles de ce cyber-harcèlement encore aujourd’hui. Je me suis battue durant un an sans relâche pour m’en sortir. Aujourd’hui, je vais mieux et j’ai eu la chance d’être très bien entourée par mes proches, des professeurs et une psychologue.
    
           Je ne partage pas mon témoignage dans le but d’obtenir de la pitié, au contraire, je partage mon témoignage pour transmettre différents messages à différentes personnes.
    
           A ceux qui harcèlent : arrêtez!
           Je sais que énormément de harceleurs sont mal dans leur peau et dans leur tête et croyez-moi je compatis mais la violence envers autrui vous détruira également plus qu’elle ne vous aidera. Je sais que dans certains cas vous ne voyez pas d’autres moyens pour exister ou pour aller mieux que d’écraser ou de faire souffrir les autres, mais il y a d’autres solutions croyez-moi. Il y aura toujours quelqu’un qui sera là pour vous écouter et vous aider et il y aura toujours des gens pour vous apprécier et vous soutenir. Demander de l’aide n’est pas une honte et admettre que l’on va mal non plus au contraire, c’est faire preuve d’un courage immense. Arrêtez de détruire autrui car pas la même occasion vous vous détruisez !
    
           A ceux qui harcèlent pour le plaisir ou pour suivre le mouvement par peur d’être également harcelé, je ne vous comprendrai jamais. Peut-on prendre du plaisir à être purement et simplement méchant et pour ceux qui suive le mouvement vous arrivez à vous regarder dans le miroir sans fermer les yeux ?
    
           A ceux qui restent silencieux, arrêtez de vous taire. Je sais que ça peut faire peur, qu’on craint les représailles de se retrouver seul de devenir sois même le « harcelé » » mais croyez moi, de ce genre de situation vous n’êtes pas neutres comme vous le prétendez. Vous êtes des harceleurs silencieux, vous êtes autant responsable que ceux qui insultent ! Alors réagissez, car si vous vous unissez pour crier votre amour et votre haine envers le harcèlement, on ne verra plus ni la haine ni le harcèlement !
    
           Aux parents qui subissent sans savoir quoi faire et comment réagir, je sais que c’est déroutant et incompréhensible pour vous parfois, mais soyez la pour votre enfant. Essayez de le comprendre vous finirez par y arriver. Discutez avec lui, réconfortez et surtout soutenez-le et accompagnez-le peut importe ces choix car ce n’est pas de sa faute. Il n’est pas le problème, il subit probablement des choses affreuses alors aimez-le et montrez-lui qu’il peut tout vous dire et vous faire confiance.
    
           Aux professeurs et autres, si un jeune laisse paraître ne serait-ce qu’un petit signe, aidez le, vous pouvez faire la différence.
    
           Aux harcelés parlez-en ! Je sais que c’est dur qu’on a honte et qu’on croit également que tout est de notre faute, mais il n’en est rien. De tout ça, vous n’êtes pas le problème ! Vous êtes des battants et vous pouvez vous en sortir. Il y a toujours un après. Il y a une fin à tous vos problèmes. Ils ne sont pas éternels et bien que je ne vous connaisse pas personnellement, je crois en vous ! Tournez vous vers vos parents, amies, professeurs, CPE… ou des associations. Je vous promets qu’un jour tout ira mieux ! Ce sera long et difficile, on a l’impression parfois qu’on y arrivera jamais, mais je vous assure qu’on peut et que la vie est encore plus belle et a encore plus de saveurs après ! »
    """)
                    .padding()
                }
            }
        }
    }
}

struct Temoignage1B_Previews: PreviewProvider {
    static var previews: some View {
        Temoignage1B().environmentObject(UserSetting())
    }
}

struct CirclesView2 : View {
    
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
