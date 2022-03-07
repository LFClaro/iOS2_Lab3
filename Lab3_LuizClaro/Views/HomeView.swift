//
//  HomeView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-06.
//

import SwiftUI

struct HomeView: View {
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
                    Text("Check out the new products, groups, events, places and more!")
                        .font(Font.subheadline.weight(.medium))
                        .padding(.horizontal)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                    Image("lostDog").resizable().scaledToFill()
                        .frame(width: sf.w, height: sf.h * 0.1)
                }
                .frame(minWidth: sf.w , minHeight: sf.h * 0.2)
                .padding(.top, sf.h * 0.1)
                .background(Color("headerColor").edgesIgnoringSafeArea(.top))
                
                ScrollView(){
                    VStack(spacing: 0){
                        HStack(alignment: .bottom){
                            Text("WALK GROUPS")
                                .font(Font.title2.weight(.medium))
                            Spacer()
                            Text("See all")
                                .font(Font.title3.weight(.medium))
                        }
                        .padding(EdgeInsets(top: sf.h * 0.01, leading: sf.w * 0.03, bottom: 0, trailing: sf.w * 0.03))
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 0){
                                Image("walkCardOne").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("walkCardTwo").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("walkCardOne").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("walkCardTwo").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                            }
                        }
                        HStack(alignment: .bottom){
                            Text("NEW PRODUCTS")
                                .font(Font.title2.weight(.medium))
                            Spacer()
                            Text("See all")
                                .font(Font.title3.weight(.medium))
                        }
                        .padding(.horizontal, sf.w * 0.03)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: sf.w * -0.1){
                                Image("productCardOne").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("productCardTwo").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("productCardOne").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                                Image("productCardTwo").resizable().scaledToFit().frame(maxWidth: sf.w * 0.8)
                            }
                            .position(x: sf.w * 1.43, y: sf.h * 0.22)
                        }
                    }
                    .padding(.bottom, sf.h * 0.1)
                }
                .frame(minHeight: sf.h * 0.8)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
