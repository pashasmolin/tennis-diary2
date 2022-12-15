//
//  MatchService.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/14/22.
//

import Foundation


class MatchService {
    
    func fetch() -> [MatchModel] {
        
        
        return [
            MatchModel.init(date: "21.11.2022",
                            player1: Player.init(name: "Alex", score: [2, 4]),
                            player2: Player.init(name: "Pasha", score: [6, 6]),
                            location: "Lifetime Tennis"),
            MatchModel.init(date: "05.12.2022",
                            player1: Player.init(name: "Pasha", score: [6, 7]),
                            player2: Player.init(name: "Dan", score: [4, 6]),
                            location: "Gates Tennis Center"),
            MatchModel.init(date: "11.12.2022",
                            player1: Player.init(name: "Pasha", score: [7, 6]),
                            player2: Player.init(name: "Matt", score: [6, 2]),
                            location: "Lifetime Tennis")
        ]
    }
}

