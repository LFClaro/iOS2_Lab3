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
            VStack{
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
                
                
                HStack(alignment: .bottom){
                    Text("WALK GROUPS")
                        .font(Font.title2.weight(.medium))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("See all")
                        .font(Font.title3.weight(.medium))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(EdgeInsets(top: 0, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                .position(x: sf.w * 0.5, y: sf.h * -0.02)
                
                
                Spacer()
            }
            .frame(width: sf.w)
        }
        .foregroundColor(Color("foregroundColor"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
