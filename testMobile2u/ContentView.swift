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
                            .frame(width: 20)
                        Image(systemName: "sleep")
                        Text("0 of 10 Watched")
                        
                        
                    }.font(.footnote)
                    Spacer()
                        .frame(height: 10)
                }.foregroundColor(.white)
                
                List {
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                    Text("ksks")
                }.frame(width: g.size.width , height: g.size.height ).foregroundColor(.blue)
            }.ignoresSafeArea(.all, edges: .all).frame(width: g.size.width)
            //FIXME: verificar o gradiente
        }.background(LinearGradient(gradient: Gradient(colors: [.black.opacity(0.95), .black]), startPoint: .center, endPoint: .bottom))
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
