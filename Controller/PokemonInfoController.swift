//
//  PokemonInfoController.swift
//  Pokedex
//
//  Created by Erica on 10/31/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import UIKit


class PokemonInfoController: UIViewController {
    
    // MARK: - Properties
    
    var pokemon: Pokemon? {
        didSet {
            
        }
    }
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewComponents()
    }
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        view.backgroundColor = .white
    }
    
}
