//
//  SearchView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-06.
//

import SwiftUI

struct SearchView: View {
    let sf = ScaleFactor()
    
    var body: some View {
        ZStack{
            Color("bgColor").edgesIgnoringSafeArea(.all)
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                VStack(){
                    Text("Find Anything\nyou need for your pets")
                        .font(Font.largeTitle.weight(.heavy))
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                }
                .frame(width: sf.w, height: sf.h * 0.15, alignment: .center)
                .background(Color("headerColor").edgesIgnoringSafeArea(.top))
                
                ScrollView(){
                    VStack(spacing: 0){
                        HStack(alignment: .center){
                            Image("vetClinics").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("placesToEat").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(EdgeInsets(top: sf.h * 0.01, leading: sf.w * 0.02, bottom: 0, trailing: sf.w * 0.02))
                        
                        HStack(alignment: .center){
                            Image("placesToWalk").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("spasSalons").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(.horizontal, sf.w * 0.02)
                        
                        HStack(alignment: .center){
                            Image("shopsProducts").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("walkGroups").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(.horizontal, sf.w * 0.02)
                        
                        HStack(alignment: .center){
                            Image("animalsInAdoption").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                            Spacer()
                            Image("dogWalkers").resizable().scaledToFit().frame(maxWidth: sf.w * 0.5)
                        }
                        .padding(.horizontal, sf.w * 0.02)
                    }
                    .padding(.bottom, sf.h * 0.1)
                }
                .frame(height: sf.h * 0.8)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
