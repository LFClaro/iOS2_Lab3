//
//  MainView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-05.
//

import SwiftUI

struct MainView: View {
    let sf = ScaleFactor()
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        
        TabView{
            HomeView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            ArticleView().tabItem {
                Label("Articles", systemImage: "newspaper.fill")
            }
            SearchView().tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
            NotificationView().tabItem {
                Label("Notifications", systemImage: "bell.fill")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "pawprint.fill")
            }
        }
        .foregroundColor(Color("foregroundColor"))
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
