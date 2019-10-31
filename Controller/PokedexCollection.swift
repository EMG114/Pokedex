//
//  PokedexCollection.swift
//  Pokedex
//
//  Created by Erica on 10/23/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PokedexCollectionViewCell"

class PokedexCollection: UICollectionViewController {
    
    //MARK: - Properties
    
    var pokemons = [Pokemon]()
    
    let infoView: InfoView = {
        let view = InfoView()
        view.layer.cornerRadius = 5
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponents()
        fetchPokemon()
        
    }
    
    // MARK: - Selectors
    
    @objc func showSearchBar() {
        
    }
    
    //MARK: - API
    
    func fetchPokemon() {
        Service.shared.fetchPokemon { pokemons in
            DispatchQueue.main.async{
                self.pokemons = pokemons
                self.collectionView.reloadData()
            }
        }
    }
    
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        collectionView.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .mainPink()
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Pokedex"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target:self, action: #selector(showSearchBar))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        collectionView.register(PokedexCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        view.addSubview(infoView)
        infoView.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width - 64, height: 500)
        infoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        infoView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -44).isActive = true
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PokedexCollectionViewCell else { return UICollectionViewCell() }
        cell.pokemon = pokemons[indexPath.item]
        return cell
    }
    
}

extension PokedexCollection: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 32, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (view.frame.width - 36)/3
        return CGSize(width:cellWidth, height: cellWidth)
    }
    
}
