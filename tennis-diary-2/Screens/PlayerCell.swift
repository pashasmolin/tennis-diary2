//
//  PlayerCell.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/14/22.
//

import Foundation
import UIKit

class PlayerCell: UITableViewCell {
    
    static let reuseId = "PlayerCell"
    
    var playerLabel: UILabel = {
        var label = UILabel.init()
        label.text = "Pasha"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var scoreLabel: UILabel = {
        var label = UILabel.init()
        label.text = "5"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        contentView.addSubview(playerLabel)
        contentView.addSubview(scoreLabel)
    }

    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            playerLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            playerLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            playerLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)

        ])
        
        NSLayoutConstraint.activate([
            scoreLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            scoreLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            scoreLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    func configure(model: Player) {
        playerLabel.text = model.name
        scoreLabel.text = model.score.map { "\($0)"}.joined()
    }
    
}




