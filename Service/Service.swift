//
//  Service.swift
//  Pokedex
//
//  Created by Erica on 10/24/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import Foundation


class Service {
    
    static let shared = Service()
    
    let BASE_URL =  "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        
        guard let url = URL(string: BASE_URL) else { return }
        
        URLSession.shared.dataTask(with: url ) { (data, response, error) in
            
            if let error = error {
                print("Failed to load", error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                guard let resultArray = try JSONSerialization.jsonObject(with: data , options: []) as? [AnyObject]  else { return }
       
                for (key, result) in resultArray.enumerated() {
                    if let dictionary = result as? [String: AnyObject] {
                        let pokemon = Pokemon(ide: key, dictionary: dictionary)
                    }
                }
                
                
            } catch let error {
                print("Failed", error.localizedDescription)
            }
        }
    .resume()
    }
}
