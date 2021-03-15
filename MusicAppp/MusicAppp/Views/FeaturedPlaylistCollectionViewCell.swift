//
//  FeaturedPlaylistCollectionViewCell.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 14.03.21.
//

import UIKit
import SnapKit

class FeaturedPlaylistCollectionViewCell: UICollectionViewCell {
    static let identifier = "FeaturedPlaylistCollectionViewCell"
    
    private let playlistCoverImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.layer.masksToBounds = true
//        imageView.layer.cornerRadius = 8
        imageView.image = UIImage(systemName: "photo")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private let playlistNameLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .center
        
        return label
    }()
    
    private let numberOfTrackslabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .thin)
        label.numberOfLines = 0
        
        return label
    }()
    
    private let creatorNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .light)
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(playlistCoverImageView)
        contentView.addSubview(playlistNameLabel)
        contentView.addSubview(creatorNameLabel)
//        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        creatorNameLabel.snp.updateConstraints { (make) in
            make.top.equalTo(self.playlistCoverImageView.snp.bottom).offset(5)
            make.left.equalTo(self.contentView.snp.right).offset(5)
            make.right.equalTo(self.contentView.snp.right).offset(5)
            make.bottom.equalTo(contentView.snp.bottom).offset(5)
        }

        playlistCoverImageView.snp.updateConstraints { (make) in
            make.top.equalTo(self.contentView.snp.top).offset(5)
            make.left.equalTo(self.contentView.snp.left).offset(5)
            make.right.equalTo(self.contentView.snp.right).offset(5)
            make.bottom.equalTo(self.contentView.snp.bottom).offset(5)
        }
        
        
        
//        creatorNameLabel.frame = CGRect(
//            x: 3,
//            y: contentView.height-44,
//            width: contentView.wight-6,
//            height: 30
//        )
//        playlistNameLabel.frame = CGRect(
//            x: 3, y: contentView.height-60,
//            width: contentView.wight-6,
//            height: 30)
//        let imageSize = contentView.height-70
////                let imageSize = 70.0
//        playlistCoverImageView.frame = CGRect(
//            x: (contentView.wight-imageSize)/2,
//            y: 3,
//            width: imageSize,
//            height: imageSize
//        )
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        playlistNameLabel.text = nil
        playlistCoverImageView.image = nil
        creatorNameLabel.text = nil
    }
    
    private func constraints() {
        
    }
    
    func configure(with viewModel: FeaturedPlaylistCellViewModel) {
        playlistNameLabel.text = viewModel.name
        playlistCoverImageView.sd_setImage(with: viewModel.artworkURL, completed: nil)
            creatorNameLabel.text = viewModel.creatorName
        
    }
}
