//
//  MatchCell.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/14/22.
//

import UIKit


class MatchCell: UITableViewCell {
    
    static let reuseId = "MatchCell"
    
    var dateLabel: UILabel = {
        var label = UILabel.init()
        label.text = "10.11.2022 16:00 Thusday"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var locationLabel: UILabel = {
        var label = UILabel.init()
        label.text = "Lifetime Tennis"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var player1Label: UILabel = {
        var label = UILabel.init()
        label.text = "Pasha"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var score1Label: UILabel = {
        var label = UILabel.init()
        label.text = "5"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var player2Label: UILabel = {
        var label = UILabel.init()
        label.text = "Pasha"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var score2Label: UILabel = {
        var label = UILabel.init()
        label.text = "5"
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 17)
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
    
    private func setupViews(){
        contentView.addSubview(dateLabel)
        contentView.addSubview(player1Label)
        contentView.addSubview(score1Label)
        contentView.addSubview(player2Label)
        contentView.addSubview(score2Label)
        contentView.addSubview(locationLabel)
    }
    
    
    //MARK: Puplic
    func configure(model: MatchModel){
        dateLabel.text = model.date
        player1Label.text = model.player1
        score1Label.text = "\(model.score[0].0) \(model.score[1].0)"
        player2Label.text = model.player2
        score2Label.text = "\(model.score[0].1) \(model.score[1].1)"
        locationLabel.text = model.location
        
    }    
}

extension MatchCell {
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -110)
        ])
        
        NSLayoutConstraint.activate([
            player1Label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            player1Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            player1Label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -80)
        ])
        
        NSLayoutConstraint.activate([
            player2Label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 70),
            player2Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            player2Label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 110),
            locationLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            locationLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            score1Label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            score1Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30),
            score1Label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -80)
        ])

        NSLayoutConstraint.activate([
            score2Label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 70),
            score2Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30),
            score2Label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)
        ])
    }
}
