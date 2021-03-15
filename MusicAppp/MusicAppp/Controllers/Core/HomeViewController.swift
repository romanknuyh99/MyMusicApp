//
//  ViewController.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 11.03.21.
//

import UIKit

class HomeViewController: UIViewController {
    
//    private var collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout { sectionIndex, _ -> NSCollectionLayoutSection? in
//        return self.cre
//    }
//    )

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .systemBackground
        
        fetchData()
    }
    
    private func fetchData() {
        APICaller.shared.getRecommendedGenres { result in
            switch result {
            case .success(let model):
                let genres = model.genres
                var seeds = Set<String>()
                while seeds.count < 5 {
                    if let random = genres.randomElement() {
                    seeds.insert(random)
                    }
                }

                APICaller.shared.getRecommendations(genres: seeds) { _ in

                }

            case .failure(let error): break
            }
            
            
        }

    }

}

