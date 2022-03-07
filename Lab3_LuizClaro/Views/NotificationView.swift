//
//  NotificationView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-06.
//

import SwiftUI

struct NotificationView: View {
    let sf = ScaleFactor()
    
    var body: some View {
        ZStack{
            Color("bgColor").edgesIgnoringSafeArea(.all)
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                VStack(){
                    Text("Notifications")
                        .font(Font.largeTitle.weight(.heavy))
                        .minimumScaleFactor(0.5)
                }
                .frame(width: sf.w, height: sf.h * 0.1)
                .background(Color("headerColor").edgesIgnoringSafeArea(.top))
                
                ScrollView(){
                    VStack(spacing: 0){
                        HStack(alignment: .bottom){
                            Text("SERVICE NOTIFICATIONS")
                                .font(Font.title2.weight(.medium))
                            Spacer()
                            Text("See all")
                                .font(Font.title3.weight(.medium))
                        }
                        .padding(EdgeInsets(top: sf.h * 0.01, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                        
                        HStack(alignment: .center){
                            Image("vetClinics").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("dogWalkers").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(.horizontal,sf.w * 0.02)
                        
                        HStack(alignment: .center){
                            Image("shopsProducts").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("spasSalons").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(.horizontal, sf.w * 0.02)
                        
                        HStack(alignment: .bottom){
                            Text("EVENTS NEAR YOU")
                                .font(Font.title2.weight(.medium))
                            Spacer()
                            Text("See all")
                                .font(Font.title3.weight(.medium))
                        }
                        .padding(EdgeInsets(top: sf.h * 0.01, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                        
                        ScrollView(.horizontal){
                            HStack(spacing: sf.w * -0.1){
                                Image("eventCardOne").resizable().scaledToFit().frame(maxHeight: sf.h * 0.35)
                                Image("eventCardTwo").resizable().scaledToFit().frame(maxHeight: sf.h * 0.35)
                            }
                        }
                    }
                    .padding(.bottom, sf.h * 0.1)
                }
                .frame(height: sf.h * 0.85)
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
