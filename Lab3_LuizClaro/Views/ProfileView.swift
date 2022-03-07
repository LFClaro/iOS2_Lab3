//
//  ProfileView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-06.
//

import SwiftUI

struct ProfileView: View {
    let sf = ScaleFactor()
    
    var body: some View {
        ZStack{
            Color("bgColor").edgesIgnoringSafeArea(.all)
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                VStack(alignment: .leading, spacing: 0){
                    Text("Hi, Luiz!")
                        .font(Font.largeTitle.weight(.heavy))
                        .padding(.leading)
                    Text("Your pets are:")
                        .font(Font.title.weight(.medium))
                        .padding(.horizontal)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: sf.w, height: sf.h * 0.15, alignment: .leading)
                .background(Color("headerColor").edgesIgnoringSafeArea(.top))
                
                ScrollView(.horizontal){
                    HStack(spacing: sf.w * -0.02){
                        Image("petCardTsuki").resizable().scaledToFit().frame(maxHeight: sf.h * 0.65)
                        Image("petCardTanooki").resizable().scaledToFit().frame(maxHeight: sf.h * 0.65)
                    }
                }
                .frame(minHeight: sf.h * 0.8, alignment: .top)
                .padding(.top)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
