//
//  PlaylistHeaderCollectionReusableView.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 17.03.21.
//

import SDWebImage
import UIKit

final class PlaylistHEaderCollectionReusableView: UICollectionReusableView {
    // MARK: - Variables
    static let identifier = "PlaylistHEaderCollectionReusableView"
    
    // MARK: - GUI Variables
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        
        return label
    }()
    
    private let ownerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 18, weight: .light)
        
        return label
    }()
    
    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "photo")
        
        return imageView
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(self.imageView)
        addSubview(self.nameLabel)
        addSubview(self.descriptionLabel)
        addSubview(self.ownerLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cicle
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize: CGFloat = height/1.5
        imageView.frame = CGRect(x: (wight-imageSize)/1.8, y: 20, width: imageSize, height: imageSize)
        
        nameLabel.frame = CGRect(x: 10, y: imageView.bottom, width: wight-20, height: 44)
        descriptionLabel.frame = CGRect(x: 10, y: nameLabel.bottom, width: wight-20, height: 44)
        ownerLabel.frame = CGRect(x: 10, y: descriptionLabel.bottom, width: wight-20, height: 44)
    }
    
    // MARK: - Methods
    func configure(with viewModel: PlaylistHeaderViewViewModel) {
        nameLabel.text = viewModel.playlistName
        ownerLabel.text = viewModel.ownerName
        descriptionLabel.text = viewModel.description
        imageView.sd_setImage(with: viewModel.artworkURL, completed: nil)
    }
}
