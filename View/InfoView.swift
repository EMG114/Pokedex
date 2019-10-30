//
//  InfoView.swift
//  Pokedex
//
//  Created by Erica on 10/30/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import UIKit

class InfoView: UIView {
    
    // MARK: - Properties
    
    let imageView: UIImageView = {
         let iv = UIImageView()
         iv.contentMode = .scaleAspectFill
         return iv
     }()
    
    lazy var nameContainerView: UIView = {
           let view = UIView()
           view.backgroundColor = .mainPink()
           view.addSubview(nameLabel)
           view.layer.cornerRadius = 5
           nameLabel.center(inView: view)
           return view
       }()
       
    let nameLabel: UILabel = {
         let label = UILabel()
         label.textColor = .white
         label.font = UIFont.boldSystemFont(ofSize: 16)
         label.text = "Charmander"
         return label
     }()
    
    let typeLabel: UILabel = {
         let label = UILabel()
         return label
     }()
     
     let defenseLabel: UILabel = {
         let label = UILabel()
         return label
     }()
     
     let heightLabel: UILabel = {
         let label = UILabel()
         return label
     }()
     
     let pokedexIdLabel: UILabel = {
         let label = UILabel()
         return label
     }()
     
     let attackLabel: UILabel = {
         let label = UILabel()
         return label
     }()
     
     let weightLabel: UILabel = {
         let label = UILabel()
         return label
     }()
}
