//
//  Movie.swift
//  testMobile2u
//
//  Created by Layla Emanuele on 18/09/21.
//

import SwiftUI

struct Movie: Codable{
    var backdrop_path: String // image
    var poster_path: String // image
    var vote_count: Int // likes
    var original_title: String
    var popularity: Double
//    var overview: String // description
//    var release_date: String
//    var genres: [Genres]
}

struct Genres: Decodable{
    var id: Int
    var name: String
}

class Api{
    func getPost(completion: @escaping (Movie) -> ()){
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/566525?api_key=6fd84a57c4346398aaae25e1f931818b")else{return}
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode(Movie.self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            
            print(posts)
            
            
        }.resume()
    }
}
