//
//  ContentView.swift
//  testMobile2u
//
//  Created by Layla Emanuele on 17/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var imageName: String = "heart"
    
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            GeometryReader { g in
                ScrollView {
                    Image("teste").resizable()
                        .scaledToFit()
                    VStack(alignment: .leading, spacing: 10){
                        HStack{
                            Text("The best movies").font(.system(size: 30)).bold()
                            Spacer()
                                .frame(width: 220)
                            Button(action: {
                                print("Edit button was tapped")
                                self.imageName = "heart.fill"
                                
                            }) {
                                Image(systemName: imageName)
                            }
                        }
                        HStack{
                            Image(systemName: "heart.fill")
                            Text("10 Likes")
                            Spacer()
                                .frame(width: 40)
                            Image(systemName: "sleep")
                            Text("0 of 10 Watched")
                            
                            
                        }.font(.footnote)
                        Spacer()
                            .frame(height: 10)
                    }.foregroundColor(.white)
                    
                    List {
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        HStack{
                            Image("testeMovieImg").resizable().frame(width: 60, height: 80)
                            
                            Spacer()
                                .frame(width: 15)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("Edward Scissorshands")
                                HStack{
                                    Text("1990").font(.footnote)
                                    Text("Drama, Fantasy").font(.footnote).foregroundColor(.gray)
                                    
                                }
                            }.foregroundColor(.white)
                            
                        }.listRowBackground(Color.black)
                        
                        
                    }.frame(width: g.size.width , height: g.size.height)

                    
                }.ignoresSafeArea(.all, edges: .all).frame(width: g.size.width)
                
                //FIXME: verificar o gradiente
            }.background(LinearGradient(gradient: Gradient(colors: [.black.opacity(0.95), .black]), startPoint: .center, endPoint: .bottom))
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
