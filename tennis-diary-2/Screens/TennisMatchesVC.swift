//
//  ViewController.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/13/22.
//

import UIKit



final class TennisMatchesVC: UIViewController {
    
    var matchService = MatchService.init()
    
    //2. Save State
    var matches: [MatchModel] = []
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView.init()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = .systemGray6
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(MatchCell.self, forCellReuseIdentifier: MatchCell.reuseId)
        
        return tableView
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        //1. Configure View
        setupViews()
        setupConstraints()
        
        //3. Business Logic
        fetchMatches()
    }
    
    //MARK: - Private
    private func fetchMatches() {
        //5. Update Model
        matches = matchService.fetch()
        tableView.reloadData()
    }
    
    private func setupViews(){
        view.backgroundColor = .systemGray6
        view.addSubview(tableView)
        
        let barButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addMatchAction))
        
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
    
    //MARK: - Actions
    //7. Event Handling
    @objc func addMatchAction() {
        showMatchDetailScreen()
    }
    
    //8. Navigation
    func showMatchDetailScreen() {
        
        //9. Configure Module
        let controller = TennisMatchesVC.init()
        //navigationController?.pushViewController(controller, animated: true)
        
        present(controller, animated: true)
    }
    
}

//MARK: - UITableViewDataSource
extension TennisMatchesVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let match = matches[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: MatchCell.reuseId, for: indexPath ) as! MatchCell
        
        //6. Update View
        cell.configure(model: match)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension TennisMatchesVC: UITableViewDelegate {
    
}

