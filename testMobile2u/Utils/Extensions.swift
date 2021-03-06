//
//  Extensions.swift
//  testMobile2u
//
//  Created by Layla Emanuele on 20/09/21.
//

import SwiftUI

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
