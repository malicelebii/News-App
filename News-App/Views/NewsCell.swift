//
//  NewsCell.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import UIKit
import Kingfisher

class NewsCell: UITableViewCell {
    static let identifier = "NewsCell"
    
    let newsTitleLabel: UILabel = {
      let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25, weight: .medium)
        return label
    }()
    
    let newsSubtitleLabel: UILabel = {
      let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    let newsImageView: UIImageView = {
      let imageView = UIImageView()
        imageView.layer.cornerRadius = 6
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(newsSubtitleLabel)
        contentView.addSubview(newsImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        newsTitleLabel.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width - 200, height: contentView.frame.size.height / 2)
        newsSubtitleLabel.frame = CGRect(x: 10, y: 70, width: contentView.frame.size.width - 200, height: contentView.frame.size.height / 2)
        newsImageView.frame = CGRect(x: contentView.frame.size.width - 170, y: 5, width: 160, height: contentView.frame.size.height - 10 )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        newsTitleLabel.text = nil
        newsSubtitleLabel.text = nil
        newsImageView.image = nil
    }
    
    func configure(with viewModel: NewsCellViewModel ) {
        newsTitleLabel.text = viewModel.title
        newsSubtitleLabel.text = viewModel.subtitle
        newsImageView.kf.setImage(with: viewModel.imageURL)
    }
}
