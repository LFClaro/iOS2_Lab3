//
//  ArticleView.swift
//  Lab3_LuizClaro
//
//  Created by Luiz Fernando Reis on 2022-03-06.
//

import SwiftUI

struct ArticleView: View {
    let sf = ScaleFactor()
    
    var body: some View {
        ZStack{
            Color("bgColor").edgesIgnoringSafeArea(.all)
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                VStack(){
                    Text("Articles and Posts")
                        .font(Font.largeTitle.weight(.heavy))
                        .minimumScaleFactor(0.5)
                }
                .frame(width: sf.w, height: sf.h * 0.1)
                .background(Color("headerColor").edgesIgnoringSafeArea(.top))
                
                ScrollView(){
                    VStack(spacing: 0){
                        Link(destination: URL(string: "https://globalnews.ca/news/8625291/green-puppy-middle-sackville/")!) {
                            Image("news1")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://www.chch.com/new-hamilton-veterinary-clinic-caters-to-low-income-clients-and-their-pets/")!) {
                            Image("news2")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://iandloveandyou.com/blogs/pet-blog/adoption-tips-questions-to-ask-when-adopting-a-dog")!) {
                            Image("news3")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://iandloveandyou.com/blogs/pet-blog/ensuring-safe-travel-with-your-emotional-support-dog")!) {
                            Image("news4")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://globalnews.ca/news/8625291/green-puppy-middle-sackville/")!) {
                            Image("news1")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://www.chch.com/new-hamilton-veterinary-clinic-caters-to-low-income-clients-and-their-pets/")!) {
                            Image("news2")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://iandloveandyou.com/blogs/pet-blog/adoption-tips-questions-to-ask-when-adopting-a-dog")!) {
                            Image("news3")
                                .resizable().scaledToFill().padding()
                        }
                        Link(destination: URL(string: "https://iandloveandyou.com/blogs/pet-blog/ensuring-safe-travel-with-your-emotional-support-dog")!) {
                            Image("news4")
                                .resizable().scaledToFill().padding()
                        }
                    }
                    .padding(.bottom, sf.h * 0.1)
                }
                .frame(height: sf.h * 0.85)
            }
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
