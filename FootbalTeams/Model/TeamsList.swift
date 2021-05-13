//
//  TeamsList.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import Foundation

struct TeamsList: Codable {
    let count: Int
    let teams: [Clubs]
}
