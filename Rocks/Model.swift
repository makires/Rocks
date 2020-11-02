//
//  Model.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 29.10.2020.
//

import Foundation

struct ClimbingLocation: Codable, Identifiable {
    let id: Int
    let name: String
    let crags: [Crags]
    struct Crags: Codable, Identifiable {
        let id = UUID()
        let cragName: String
        let routes: [Route]
        struct Route: Codable, Identifiable {
            let id = UUID()
            let name: String
            let grade: String
            let bolts: String
        }
    }
}
