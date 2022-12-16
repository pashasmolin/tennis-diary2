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
            MatchModel.init(date: "Sep 3, 2020",
                            player1: "Dan",
                            player2: "Pasha",
                            score: [(6, 5), (5, 3)],
                            location: "Armstrong Tennis"),
            MatchModel.init(date: "Sep 2, 2020",
                            player1: "Alex",
                            player2: "Pasha",
                            score: [(6, 6), (5, 3)],
                            location: "Centennial Tennis")
        ]
    }
}

