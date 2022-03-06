//
//  MainView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-05.
//

import SwiftUI

struct MainView: View {
    let sf = ScaleFactor()
    
    var body: some View {
        ZStack{
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            
            ScrollView{
                HStack(alignment: .bottom){
                    Text("WALK GROUPS")
                        .font(Font.title2.weight(.medium))
                    Spacer()
                    Text("See all")
                        .font(Font.title3.weight(.medium))
                }
                .padding(EdgeInsets(top: 0, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                
                ScrollView(.horizontal){
                    HStack(spacing: sf.w * 0.02){
                        Image("walkCardOne")
                        Image("walkCardTwo")
                        Image("walkCardOne")
                        Image("walkCardTwo")
                    }
                }
                HStack(alignment: .bottom){
                    Text("PRODUCTS")
                        .font(Font.title2.weight(.medium))
                    Spacer()
                    Text("See all")
                        .font(Font.title3.weight(.medium))
                }
                .padding(EdgeInsets(top: 0, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                
                ScrollView(.horizontal){
                    HStack(spacing: sf.w * -0.09){
                        Image("productCardOne")
                        Image("productCardTwo")
                        Image("productCardOne")
                        Image("productCardTwo")
                    }
                }
            }
            .position(x: sf.w * 0.5, y: sf.h * 0.68)
            
            Group{
                VStack(alignment: .leading){
                    Text("Hi, Luiz!")
                        .font(Font.largeTitle.weight(.heavy))
                        .padding(.leading)
                    Text("Check out the new products, groups, events, places and more!")
                        .font(Font.subheadline.weight(.medium))
                        .padding(.leading)
                    Image("lostDog").resizable().scaledToFill()
                        .frame(width: sf.w, height: sf.h * 0.1)
                }
                .frame(width: sf.w * 0.8)
                .padding(EdgeInsets(top: sf.h * 0.05, leading: sf.w * 0.1, bottom: sf.h * 0.01, trailing: sf.w * 0.1))
                .background(Color("bgColor"))
                .edgesIgnoringSafeArea(.top)
            }.frame(maxHeight: .infinity, alignment: .top)
        }
        .foregroundColor(Color("foregroundColor"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
