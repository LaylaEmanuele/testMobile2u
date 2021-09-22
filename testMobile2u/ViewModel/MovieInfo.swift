//
//  MovieInfo.swift
//  testMobile2u
//
//  Created by Layla Emanuele on 19/09/21.
//

import SwiftUI

struct MovieInfo: View{
    @State var imageName: String = "heart"
    var movie: Movie?

    var body: some View {
      
            VStack(alignment: .leading, spacing: 10){
                
                ZStack{
                    
                    Image(uiImage: "https://image.tmdb.org/t/p/original/\(movie?.poster_path ?? "")".load())
                        .resizable()
                        .scaledToFit()

                    Button(action: {
                        
                        print("Edit button back was tapped")
                    }) {
                        Image(systemName: "chevron.left.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            
                    } .offset(x: -170, y:-220)
                }
                
                HStack{
                    Text("The best movies of Marvel").font(.system(size: 30)).bold().frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                        .frame(width: 22)
                    
                    Button(action: {
                        print("Edit button was tapped")
                        
                        if(self.imageName == "heart.fill"){
                            self.imageName = "heart"
                            
                        }else{
                            self.imageName = "heart.fill"
                        }
                        
                    }) {
                        Image(systemName: imageName)
                    }
                }
                
                HStack{
                    Image(systemName: "heart.fill")
                    Text("\(movie?.vote_count ?? 0) Likes")
                    Spacer()
                        .frame(width: 40)
                    
                    Image(systemName: "person.3.fill")
                   
                    Text("\(String(format: "%.3f", movie?.popularity ?? 0.0)) views")
                    
                }.font(.footnote)
                
                Spacer()
                    .frame(height: 10)
                
            }.foregroundColor(.white)
        
    }
}

