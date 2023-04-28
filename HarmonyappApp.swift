//
//  HarmonyappApp.swift
//  Harmonyapp
//
//  Created by Phounphonh on 24/01/2023.
//

import SwiftUI


@main
struct HarmonyappApp: App {
    @StateObject var myWallpaper = UserSetting()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(myWallpaper)
        }
    }
}
