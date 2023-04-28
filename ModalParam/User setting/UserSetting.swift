//
//  Wallapper.swift
//  Harmonyapp
//
//  Created by Phounphonh on 06/02/2023.
//

import Foundation

class UserSetting: ObservableObject {
    @Published var color: String = "Color1"
    @Published var avatar: String = "avatar31"
    @Published var userName: String = "Username"
    @Published var mdp: String = "user"
    @Published var mail: String = "username@gmail.com"
    @Published var telNumber: String = "0606060606"
    
    @Published var isOnline = true
    @Published var isVerified = false
    @Published var isPressed = false
}
