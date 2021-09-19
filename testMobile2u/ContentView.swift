//
//  ContentView.swift
//  testMobile2u
//
//  Created by Layla Emanuele on 17/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var imageName: String = "heart"
    @State var movie: Movie? = nil
    
    
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            GeometryReader { g in
                ScrollView {
                   
                    MovieInfo(movie: self.movie)
                    
                    
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
            
        }.onAppear{
            Api().getPost { (movie) in
                self.movie = movie
            }
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
