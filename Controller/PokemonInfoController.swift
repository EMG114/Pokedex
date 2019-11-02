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
            navigationItem.title = pokemon?.name?.capitalized
        }
    }
    
    let imageView: UIImageView = {
          let iv = UIImageView ()
          iv.backgroundColor = .secondarySystemBackground
          iv.contentMode = .scaleAspectFit
          return iv
      }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
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
