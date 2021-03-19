//
//  CategoryCollectionViewCell.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 14.03.21.
//

import UIKit
import SDWebImage

class CategoryCollectionViewCell: UICollectionViewCell {
    // MARK: - Variables
    static let identifier = "CategoryCollectionViewCell"
    
    private let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemBlue,
        .systemPurple,
        .systemOrange,
        .systemGray,
        .systemYellow,
        .darkGray,
        .systemTeal
    ]
    
    // MARK: - GUI Variables
    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .white
        imageView.image = UIImage(systemName: "music.quarternote.3", withConfiguration: UIImage.SymbolConfiguration(pointSize: 50, weight: .regular))
        
        return imageView
    }()
    
    private let label: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        contentView.addSubview(label)
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
        imageView.image = UIImage(systemName: "music.quarternote.3",
                                  withConfiguration: UIImage.SymbolConfiguration(pointSize: 50, weight: .regular))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        label.frame = CGRect(
            x: 10,
            y: contentView.height/2,
            width: contentView.wight-20,
            height: contentView.height/2)
        imageView.frame = CGRect(
            x: contentView.wight/2,
            y: 10,
            width: contentView.wight/2,
            height: contentView.height/2)
    }
    
    // MARK: - Methods
    func configure(with viewModel: CategoryCollectionViewCellViewModel) {
        label.text = viewModel.title
        imageView.sd_setImage(with: viewModel.artworkURL, completed: nil)
        contentView.backgroundColor = colors.randomElement()
    }
}
