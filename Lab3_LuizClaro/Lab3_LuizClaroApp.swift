//
//  Lab3_LuizClaroApp.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-04.
//

import SwiftUI

@main
struct Lab3_LuizClaroApp: App {
    @State private var showLaunchScreen: Bool = true
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    if showLaunchScreen {
                        LaunchView(showLaunch: $showLaunchScreen)
                            .navigationBarHidden(true)
                            .transition(.move(edge: .leading))
                    } else {
                        MainView()
                            .navigationBarHidden(true)
                    }
                }
            }
            .preferredColorScheme(.light)
        }
    }
}
