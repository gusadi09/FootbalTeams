//
//  Clubs.swift
//  FootbalTeams
//
//  Created by Gus Adi on 12/05/21.
//

import Foundation

struct Clubs: Codable {
    let id: Int
    let name: String
    let shortName: String
    let crestUrl: String
    let address: String
    let clubColors: String
    let venue: String
}
