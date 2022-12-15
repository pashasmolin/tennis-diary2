//
//  LocationCell.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/14/22.
//

import UIKit

class LocationCell: UITableViewCell {
    
    static let reuseId = "LocationCell"
    
    var locationLabel: UILabel = {
        var label = UILabel.init()
        label.text = "Lifetime Tennis"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        contentView.addSubview(locationLabel)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            locationLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            locationLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    func configure(_ model: String) {
        locationLabel.text = model
    }
}

