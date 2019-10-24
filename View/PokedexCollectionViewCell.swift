//
//  PokedexCollectionViewCell.swift
//  Pokedex
//
//  Created by Erica on 10/23/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import UIKit

class PokedexCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    let imageView: UIImageView = {
        let imgv = UIImageView ()
        imgv.backgroundColor = .systemGroupedBackground
        imgv.contentMode = .scaleAspectFit
        return imgv
    }()
    
    lazy var nameContainerView: UIView = {
        let viewContainer = UIView()
        viewContainer.backgroundColor = .mainPink()
        viewContainer.addSubview(nameLabel)
        nameLabel.center(inView: viewContainer)
        return viewContainer
    }()
    
    let nameLabel: UILabel = {
        let nameContainerLabel = UILabel()
        nameContainerLabel.textColor = .white
        nameContainerLabel.font = UIFont.systemFont(ofSize: 16)
        nameContainerLabel.text = "Pikachu"
        nameContainerLabel.backgroundColor = .mainPink()
        return nameContainerLabel
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      configureViewComponent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper Method
    
    func configureViewComponent() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: self.frame.height - 32)
        
        addSubview(nameContainerView)
            nameContainerView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 32)
    }
}
