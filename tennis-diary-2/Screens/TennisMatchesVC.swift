//
//  ViewController.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/13/22.
//

import UIKit

enum SectionType: Int, CaseIterable {
    case date = 0
    case player1
    case player2
    case location
}

final class TennisMatchesVC: UIViewController {
    
    var matchService = MatchService.init()
    
    var matches: [MatchModel] = []
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = .systemGray6
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(DateCell.self, forCellReuseIdentifier: DateCell.reuseId)
        
        tableView.register(LocationCell.self, forCellReuseIdentifier: LocationCell.reuseId)
        
        tableView.register(PlayerCell.self, forCellReuseIdentifier: PlayerCell.reuseId)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
        fetchMatches()
    }
    
    func fetchMatches() {
        matches = matchService.fetch()
        tableView.reloadData()
    }
    
    func setupViews() {
        view.backgroundColor = .systemGray6
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
        
    }
}

extension TennisMatchesVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return matches.count //section - container for cells
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SectionType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let sectionType = SectionType.init(rawValue: indexPath.row)
        
        let match = matches[indexPath.section]
        
        switch sectionType {
        case .date:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: DateCell.reuseId, for: indexPath) as! DateCell
            cell.configure(match.date)
            return cell
            
            
        case .player1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: PlayerCell.reuseId, for: indexPath) as! PlayerCell
            cell.configure(model: (match.player1))
            return cell
            
        case .player2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: PlayerCell.reuseId, for: indexPath) as! PlayerCell
            cell.configure(model: (match.player2))
            return cell
            
        case .location:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: LocationCell.reuseId, for: indexPath) as! LocationCell
            cell.configure(match.location)
            return cell
            
            
        default:
            return UITableViewCell()
        }
        
    }
    
    
}

extension TennisMatchesVC: UITableViewDelegate {
    
}
