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
                
                Image(uiImage: "https://image.tmdb.org/t/p/original/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg".load())
                    .resizable()
                    .scaledToFit()
                
                HStack{
                    Text("The best movies of Marvel").font(.system(size: 30)).bold()
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
                    Text("\(movie?.vote_count ?? 0) Likes")
                    Spacer()
                        .frame(width: 40)
                    Image(systemName: "sleep")
                   
                    Text("\(movie?.popularity ?? 0)")
                    
                    
                }.font(.footnote)
                
                Spacer()
                    .frame(height: 10)
                
            }.foregroundColor(.white)
            
        
        
    }
}


extension String{
    
    func load()->UIImage{
        do{
            guard let url = URL(string: self)else{
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
            
        }catch{
            
        }
        return UIImage()
    }
}
