//
//  DateCell.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/13/22.
//

import UIKit

class DateCell: UITableViewCell {
    
    static let reuseId = "DateCell"
    
    var dateLabel: UILabel = {
        var label = UILabel.init()
        label.text = "10.11.2022 16:00 Thusday"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.font = UIFont.boldSystemFont(ofSize: 14)
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
    }
    
    
    //MARK: Puplic
    func configure(_ model: String){
        dateLabel.text = model
    }
    
}

extension DateCell {
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}
