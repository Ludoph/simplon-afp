//
//  BesoinAideList.swift
//  Harmonyapp
//
//  Created by Phounphonh on 02/02/2023.
//

import SwiftUI

struct BesoinAideList: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Besoin d'aide ?")
            Image("pageenconstruction")
        }
    }
}

struct BesoinAideList_Previews: PreviewProvider {
    static var previews: some View {
        BesoinAideList()
    }
}
